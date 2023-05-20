library(jsonlite)
taobike<-fromJSON("http://data.tycg.gov.tw/api/v1/rest/datastore/a1b4714b-3b75-4ff8-a8f2-cc377e4eaa0f?format=json")
str(taobike)
View(taobike$result$records)
table(taobike$result$records$sarea)

work<-fromJSON("https://tpnco.blob.core.windows.net/blobfs/Todaywork.json")
str(work)
View(work)
View(work$features$properties$Positions)

toJSON(iris,pretty = TRUE)->myjson
myjson
