num<-100
is.character(num)
class(num)
class(Sys.Date())
as.character(num)
as.numeric("100")

library(rvest)
ubereatsURL<-"https://www.ubereats.com/tw"
ubereatContent<-read_html(ubereatsURL,encoding = "UTF-8")
ubereat_title<-ubereatContent %>%
  html_nodes(".dn") %>%
  html_text()

ubereat_littlew<-ubereatContent %>%
  html_nodes(".dv") %>%
  html_text()
ubereat_littlew<-ubereat_littlew[1:5]
ubereats_table<-data.frame(title=ubereat_title,
                           littlew=ubereat_littlew)

View(ubereats_table)


strsplit("Hello World"," ")
strsplit("Hello World"," |o")
substr("Hello World",start = 2,stop = 7)
toupper("Hello World")
tolower("Hello World")
paste("Hello","World",sep = "")
paste0("Hello","World")
gsub("o","0","Hello World")
gsub("o|l","0","Hello World")
library(stringr)
str_trim(" Hello World ")
grepl("A",c("Apple","salad","pineApple","juice","JAcy"))
grep("A|s",c("Apple","salad","pineApple","juice","JAcy"))

letters[c(-1,-2,-3)]
head(letters,4)
tail(letters,6)
iris[1,3]##第一列row，第三列column
iris[1:3,]
iris[1:10,c(T,T,F,F,T)]##第一至十列row，第一、二、五列column
iris[,"Species"]##所有row，且行名稱為Species的data
iris[1:10,"Species"]

seq(1,150,by=2)->odds
iris[odds,]
seq(2,150,by=2)->even
iris[even,c(F,F,F,T,T)]
subset(iris,Species=="virginica")

mtcars
subset(mtcars,cyl<=6)
View(mtcars)
rownames(mtcars)->rowname_car
grepl("Toyota",rowname_car)->toyota
mtcars[toyota,]
