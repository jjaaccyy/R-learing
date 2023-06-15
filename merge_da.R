merge(X111villiage,namevilliage,by="site_id")->add_village
View(add_village)
nrow(add_village)
ncol(add_village)
nrow(X111villiage)

airquality
View(airquality)
head(airquality)
library(tidyr)
gather(airquality,key = Type,value = Value,Ozone,Solar.R,Wind,Temp)->air_n
air_n
spread(air_n,key = Type,value = Value)->air_w
air_w
head(airquality,5)
head(airquality[complete.cases(airquality),])
complete.cases(airquality)


