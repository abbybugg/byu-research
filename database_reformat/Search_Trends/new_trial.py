from pytrends.request import TrendReq
from pytrends import dailydata
import pandas as pd
from pandas import DataFrame
import sqlite3

keyword = 'asymptomatic'
location = 'US'
df = dailydata.get_daily_data(keyword, 2020, 1, 2020, 2, geo = 'US')


#Format dataframe:
df = df.reset_index()
Date = df['date'].dt.dayofyear
df.insert(loc=0, column='Date', value=Date)
dff = df[['Date', keyword]]
dff.insert(loc=1, column='Location', value=location)
print(dff)




#EXPORTING TO DATABASE:
##########################################################

conn = sqlite3.connect('DATABASE.db')
c = conn.cursor()
conn.commit()
data = pd.read_sql('SELECT * FROM Search_Data', conn)
df2 = data.merge(dff, on=['Date', 'Location'], how='left')
df2 = df2.fillna(0)
df2.to_sql("Search_Data", con=conn, if_exists = 'replace', index=False)

