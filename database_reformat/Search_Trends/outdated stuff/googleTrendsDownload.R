# gtrendsR package has commands that extract Google Trends data
library(gtrendsR) 

# create dataframe of January daily data
df1 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-01-01 2020-01-31"))
january <- df1$interest_over_time

# create dataframe of February daily data
df2 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-02-01 2020-02-28"))
february <- df2$interest_over_time

# create dataframe of March daily data
df3 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-03-01 2020-03-31"))
march <- df3$interest_over_time

# create dataframe of April daily data
df4 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-04-01 2020-04-30"))
april <- df4$interest_over_time

# create dataframe of May daily data
df5 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-05-01 2020-05-31"))
may <- df5$interest_over_time

# create dataframe of June daily data
df6 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-06-01 2020-06-30"))
june <- df6$interest_over_time

# create dataframe of July daily data
df7 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-07-01 2020-07-31"))
july <- df7$interest_over_time

# create dataframe of August daily data
df8 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-08-01 2020-08-31"))
august <- df8$interest_over_time

# create dataframe of September daily data
df9 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-09-01 2020-09-30"))
september <- df9$interest_over_time

# create dataframe of October daily data
df10 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-10-01 2020-10-31"))
october <- df10$interest_over_time

# create dataframe of November daily data
df11 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-11-01 2020-11-16"))
november <- df11$interest_over_time

# create dataframe of December daily data
#df12 <- gtrends(c("coronavirus"), gprop = 'web', geo = c('US-CA'), time = ("2020-12-01 2020-12-30"))
#december <- df12$interest_over_time

# combine all of the dataframes into one (addings rows, not columns)
California_yearly_data <- rbind(january,february,march,april,may,june,july,august,september,october,november)

# export dataframe to CSV file
write.csv(California_yearly_data, "California_df.csv")


