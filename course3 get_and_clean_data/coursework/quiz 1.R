# quiz 1

getwd()
setwd("/Users/mm991t/Desktop/ds_coursera_cert/get_and_clean_data")
list.files()

file1 <- read.csv("getdata_data_ss06hid .csv", sep=",")
dim(file1) #6496 188

head(file1)

which(file1$VAL == '24') # total 53

head(file1$FES)
str(file1$FES) 

list.files()

# read xlsx file
install.packages("xlsx")
library(xlsx)

library(readxl)

dat <- read_excel("getdata_data_DATA.gov_NGAP.xlsx")[18:23, 7:15]
sum(dat$Zip*dat$Ext,na.rm=T)

# Read XML file

require(XML)

  
 
data <- xmlParse("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants")

# question 5
library(data.table)
data2 <- download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "ques.csv", silent = FALSE)
dt <- fread("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")

mean(dt$pwgtp15,by=dt$SEX)
dt[,mean(pwgtp15),by=SEX]

# Quiz 4

q1 <- file1$ACR ==3 & file1$AGS ==6
which(q1)

# q2
install.packages("jpeg")
library(jpeg)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "quiz4file.jpg")
jpeg_file <- readJPEG(source = "quiz4file.jpg" ,
                  native = TRUE)
quantile(jpeg_file, probs =c(0.30,0.80))

# q3
# my answer was not correct
library(data.table)

countries <- fread("getdata_data_GDP.csv", skip = 4, nrows= 190, select = c(1, 2, 4, 5), 
                   col.names = c("CountryCode", "Rank", "Economy", "Total"))

education <- fread("getdata_data_EDSTATS_Country.csv")

new <- merge(countries, education, by = "CountryCode")
head(new)
new_arranged <- arrange(new, desc(Rank))

# q4
head(countries)
head(education)
unique(education$`Income Group`)

tapply(new_arranged$Rank, new_arranged$`Income Group`, mean)

# q5
install.packages("Hmisc")
library(Hmisc)
new_arranged$cut_rank <- cut2(new_arranged$Rank, g = 5)

table(new_arranged$cut_rank , new_arranged$`Income Group`)
