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
