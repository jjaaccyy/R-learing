library(readr)
opendata10401 <- read_csv("C:/Users/user/Dropbox/我的電腦 (DESKTOP-K3PASOM)/Desktop/R learning/opendata10401.csv")
View(opendata10401)

row.names(opendata10401)
colnames(opendata10401)
str(opendata10401)
length(opendata10401)
dim(opendata10401)

library(xml2)
oriURL<-"https://data.cip.gov.tw/API/v1/dump/datastore/A53000000A-112018-002"
oriQ<-read_xml(oriURL)
ori_xml<-xml_find_all(oriQ,".//新北市")
ori<-xml_text(ori_xml)
ori[1:7]



