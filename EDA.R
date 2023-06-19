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
