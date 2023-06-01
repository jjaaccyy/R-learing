library(tuber)
clientID<-"302334093517-lpoj349umim8sgal3o38gk18omlkfv0f.apps.googleusercontent.com"
clientKey<-"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"
yt_oauth(clientID,clientKey,token = " ")
stat<-get_stats(video_id = "54PjzjQv1W0")
data.frame(stat)
detail<-get_video_details(video_id = "54PjzjQv1W0")
str(detail)
View(detail$items[[1]]$snippet)
tagsName<-data.frame(tags=detail$items[[1]]$snippet$tags)
View(tagsName)

comment<-get_all_comments(video_id = "54PjzjQv1W0")
View(data.frame(comment))
as.numeric(comment$likeCount)->comment$likeCount
comment$textOriginal->commenttidy
grep("滴妹",commenttidy)
strsplit(commenttidy,"，|？|。")->comment_split
comment_split[[156]]
