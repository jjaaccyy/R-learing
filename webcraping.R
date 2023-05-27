library(XML)
htmlParse("https://im.cgu.edu.tw/bin/home.php")->html
xpathSApply(html, "//span", xmlValue)


Repoterurl<-"https://www.twreporter.org/"
Rtml<-read_html(Repoterurl,encoding = "UTF-8")
Rnodes<-html_nodes(Rtml,".kOkdzB")
titles<-html_text(Rnodes)
titles

library(rvest)
bnexturl<-"https://www.bnext.com.tw/"
bnextcontent<-read_html(bnexturl,encoding = "UTF-8")
bnext_title<-bnextcontent %>%
html_nodes(".font-weight-bold") %>%
html_text()
bnext_inner<-bnextcontent %>%
html_nodes(".v-btn__content") %>%
html_text()
bnext_inf<-bnextcontent %>%
html_nodes(".grey--text") %>%
html_text()

techurl<-"https://www.ptt.cc/bbs/Tech_Job/index.html"
techco<-read_html(techurl)
tech_jobtitle<-techco %>%
html_nodes("a") %>%
html_text()
tech_jobtitle[3]


