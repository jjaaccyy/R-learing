#choroplethr面量圖
install.packages(c("choroplethr","choroplethrMaps"))
library(choroplethr)
data("df_pop_state") #先載入資料
state_choropleth(df_pop_state) #再畫圖
data("continental_us_states")
state_choropleth(df_pop_state,
                 reference_map = TRUE,  #reference_map設定=TRUE表再面量圖加上google地圖
                 zoom = continental_us_states)
library(ggmap)
#get_googlemap()取得googlemap圖層，需要建立API
register_google(key = "AIzaSyA2e4ACRjaCzZ7J8JBBWDYGytOHvSXE9rs")
get_googlemap(center = c(lon=120.58,lat=23.58),
              zoom = 7,
              language = "zh-TW")
library(jsonlite)
library(RCurl)
BikeData<-fromJSON(getURL("https://data.tycg.gov.tw/api/v1/rest/datastore/8549a09a-169e-48d4-a47c-a64ec3e8e407?format=json"))
#要進入資料API的網址
data.frame(BikeData)->BikeData
#str(BikeData)
#View(BikeData)
as.numeric(BikeData$result.records.lat)->BikeData$result.records.lat #經緯度改成數值再放橫、縱軸
as.numeric(BikeData$result.records.lon)->BikeData$result.records.lon
as.numeric(BikeData$result.records.date)->BikeData$result.records.date
Bikemap<-get_googlemap(center = c(lon=121.1,lat=25),
                       zoom = 20,maptype = "terrain")
Bikemap0<-ggmap(Bikemap)+geom_point(data = BikeData,
                                   aes(x=result.records.lon,y=result.records.lat,color=result.records.date,size=3.5))+
  scale_color_continuous(low="yellow",high="red")+
  guides(size=FALSE) #針對size不要有圖例
Bikemap0

TaoYuan<-get_googlemap(center = c(lon=121.20,lat=25.00),
                       zoom=11,language = "zh-TW")
chunGun<-ggmap(TaoYuan,extent = "device")+geom_point(aes(x=121.389539,y=25.035225,color="red",size=6))+
  guides(size=FALSE)
chunGun
