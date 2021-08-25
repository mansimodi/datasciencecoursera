install.packages("RMySQL")

source("https://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(rhdf5)

install.packages("BiocManager")
library(BiocManager)

install.packages("sqldf")
library(sqldf)

getwd()
setwd("/Users/mm991t/Desktop/get_and_clean_data")
list.files()

acs <- read.csv("getdata_data_ss06hid.csv", header = TRUE, sep= ",")
head(acs)
sqldf("select wgtp1 from acs where AGEP < 50")

myapp = oauth_app("github", key="yourconsumerkey ", 
                  secret = "yourconsumersecrethere ")
sig = sign_oauth1.0(myapp, 
                    token=" yourtokenhere", 
                    token_secret = "yourtokensecrethere ")


homeTL = GET("Linktotheurl ", sig)

json1 = content(homeTL)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1,1:4]

con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlcode=readLines(con)
close(con)
htmlcode

nchar(htmlcode[10])
nchar(htmlcode[c(10,20,30,100)])


list.files()
data2<- read.fwf("getdata_wksst8110.f", widths = c(9,8,8,8,8), header= TRUE , )
head(data2)
str(data2)
