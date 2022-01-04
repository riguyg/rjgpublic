library(dplyr)
getwd()

#import your data file here
shipping <- read.csv(file = '.../your_folder/your_data.csv')
names(shipping)

## uncomment this if you have not installed stringi
##install.packages("stringi")

## prepares to extract zip code string from address column
library(stringi)
zip <- stri_extract_last_regex(your_data$address_column, "\\d{5}")
zip


#turns this list zip codes into a dataframe that is 1 column wide
zip1 <- array(zip)
zip2 <- as.data.frame(zip1)
zip2


## this organizes the columns by number of zip code occurences, and then ranks them from first to last
zip_tot <- zip2 %>%
  group_by(zip1) %>% count()
zip_tot
zip_tot1 <- zip_tot[order(zip_tot$n, decreasing =TRUE),]
zip_tot1

## forces the zip code from a list of values to a dataframe
hgram <- as.data.frame(zip2$zip1)
hgram

