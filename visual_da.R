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
