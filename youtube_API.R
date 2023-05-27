library(tuber)
clientID<-"302334093517-lpoj349umim8sgal3o38gk18omlkfv0f.apps.googleusercontent.com"
clientKey<-"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"
yt_oauth(clientID,clientKey,token = " ")
stat<-get_stats(video_id = "3KMWUUxKOIY")
data.frame(stat)
detail<-get_video_details(video_id = "3KMWUUxKOIY")
str(detail$items)

str(detail)
yttitle<-detail$items[[1]]$snippet$title
comment<-get_all_comments(video_id = "3KMWUUxKOIY")
View(data.frame(comment))
as.numeric(comment$likeCount)->comment$likeCount
