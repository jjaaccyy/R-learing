install.packages("devtools")
install_github("pablo14/funModeling")
devtools::install_local("funModeling-master.zip")
library(devtools)
library(usethis)
library(rJava)
devtools::install_github("pablo14/funModeling")
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
table(iris$Species)
range(iris$Sepal.Length)
quantile(iris$Sepal.Length)
mean(mtcars$hp)
sd(mtcars$hp)
table(mtcars$cyl,mtcars$am)->mtTable
prop.table(mtTable,margin = 1) #row加起來為1
prop.table(mtTable,margin = 2) #column加起來為1
is.numeric(airquality$Ozone)
cor(airquality$Temp,airquality$Wind)
mtcars
table(mtcars$cyl,mtcars$gear)->mtcars_gear
prop.table(mtcars_gear,margin = 1)

grepl(6,mtcars$cyl)->cyl_6
mtcars$mpg->mpg_extract
mpg_extract[cyl_6]->cyl_6extract
grepl(4,mtcars$cyl)->cyl_4
mpg_extract[cyl_4]->cyl_4extract
mean(cyl_6)
mean(cyl_4)

mean(mtcars[mtcars$cyl==4,"mpg"])
mean(mtcars[mtcars$cyl==6,"mpg"])
mean(mtcars[mtcars$cyl==8,"mpg"])
library(dplyr)
select(iris,starts_with("Sepal"),Species)->select1 #=iris[,c("Species","Sepal.Length","Sepal.Width")]
select(iris,Petal.Length:Species)->select2
select(iris,Sepal.Length:"1990",-sort)->select3 #遇到欄位名稱為num時要加""
iris[iris$Sepal.Length>5,]
filter(iris,Sepal.Length>5)
filter(iris,Species %in% "setosa") #%in%表 左邊的向量包括右邊的向量
iris
filter(iris,Sepal.Length-Sepal.Width>=0.5
       &Petal.Length>=1.6)
mutate1<-mutate(iris,plus=Sepal.Length+Sepal.Width) #增加一個叫做plus的欄位
summarise(iris,
          nNumber=n(),
          nSpecies=n_distinct(Species),
          nLength=n_distinct(Petal.Length)
          )->summarise_n
filter(iris,Sepal.Length>6.5) %>% #用pipe串接程式碼，可將前一個程式碼餵給下一個程式碼的"第一個"參數
  summarise(nNumber=n(),
            mean_Width=mean(Sepal.Width),
            mean_Length=mean(Petal.Length))
group_by(iris,Species) %>%
  summarise(nNumber=n(),
            nLength=mean(Petal.Length),
            nWidth=mean(Sepal.Width))
arrange(iris,Petal.Width) #根據Petal.Width由小到大排列，desc(Petal.Width)為由大到小排列
rename(iris,PW=Petal.Width) #PW取代原名字Petal.Width
install.packages("data.table")
library(data.table)
new_iris<-data.table(iris) #將dataframe轉換成datatable
class(new_iris) #datatable是dataframe資料型別的延伸
str(new_iris)
new_iris[grepl("virginica",Species)] #在datatable裡面使用grepl時，不須寫new_iris$Species，直接寫Species即可
                                     # ，但當資料為dataframe時，必須加$
new_iris[grepl("virginica",Species)&Petal.Length>=6] #若DT只需要前方參數，後方"，"可省略，若用DF則不可省略
new_iris[,mean(Petal.Width)] #算某一欄位的平均數
new_iris[,.(LengthMean=mean(Petal.Length),WidthMean=mean(Petal.Width))] #可用.()同時計算多筆欄位平均
new_iris[Sepal.Length>5,
        .(WMean=mean(Sepal.Width),LMean=mean(Sepal.Length))]->GM_new_iris
new_iris[Sepal.Length>5,
         .(.N,ML=mean(Sepal.Length),MW=mean(Sepal.Width)),
         by=Species] #by表示分組


