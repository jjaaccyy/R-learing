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


