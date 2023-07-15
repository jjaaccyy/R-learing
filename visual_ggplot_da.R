library(esquisse) #可用來製圖不須會程式碼
data(iris)
esquisser()

library(ggplot2)
ggplot(iris) +
 aes(x = Sepal.Width, y = Sepal.Length) +
 geom_point(shape = "circle", size = 1.5, colour = "#C3AAEB") +
 labs(title = "Iris plot", subtitle = "Species") +
 theme_minimal() +
 facet_wrap(vars(Species))

qplot(Sepal.Width,data = iris,fill=Species)
#qplot(X軸名稱,Y軸名稱,data=,color=)畫出散布圖
#單變量圖形預設直方圖，雙變量圖形預設散布圖
qplot(Sepal.Width,Sepal.Length,data = iris,facets = .~Species)
#facets=直向分類(row)~橫向分類(column)
qplot(Sepal.Length,Sepal.Width,data = iris,facets = .~Species)
#binwidth為直方圖的分組間隔
ggplot(iris,
       aes(x=Sepal.Length,y=Sepal.Width,color=Species))+
  geom_boxplot()+labs(x="xxx",y="yyy",title = "setting",color="filling")+
  theme_light()
#此處color為設定color label的名稱
install.packages("ggthemes")
library(ggthemes)

library(datasets)
library(dplyr)
View(airquality)
as.factor(airquality$Month)->airquality$Month
group_by(airquality,Month)->M_air
summarise(M_air,ozonemean=mean(Ozone,na.rm=T))->mean_ozone

ggplot(mean_ozone,aes(x=Month,y=ozonemean))+geom_bar(stat = "identity")
#要加stat="identity"不然資料會預設為月份出現的次數的count

airquality.stat<-
  airquality%>%group_by(Month)%>%summarise(ozonemean=mean(Ozone,na.rm=T),
                                           ozonesd=sd(Ozone,na.rm=T))
ggplot(data=airquality.stat)+
  geom_bar(aes(x=Month,y=ozonemean),
           stat="identity")+
  geom_errorbar(aes(x=Month,ymin=ozonemean-ozonesd,
                    ymax=ozonemean+ozonesd),width=.3)

#geom_smooth(method = "lm")意思為畫線性回歸線
#color=Species不需要加""
#geom_bar()裡面也可放aes(x=...,y=...)
#geom_errorbar(x=...,ymin=...,ymax=...)



