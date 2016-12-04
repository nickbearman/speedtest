# library(stringi) #stri_trim_left
#library(ggplot2)
#library(broom) #tidy

# setwd("~/Dropbox/Apps/Speed Test Results Uploader")

df <- read.table("speedtest-results.txt", fill = TRUE)
#fill = TRUE sets missing values to NA

#drop unnecessary rows
df$V8 <- NULL
df$V7 <- NULL
df$V6 <- NULL
df$V5 <- NULL

#rename cols
colnames(df)[1] <- "date"
colnames(df)[2] <- "time"
colnames(df)[3] <- "speed.a"
colnames(df)[4] <- "speed.b"

#remove brackets
df$speed.c <- gsub("\\(", "", df$speed.a)
df$speed.d <- gsub("\\)", "", df$speed.b)

#update from Kb/s to Mb/s
  #change to numeric
  df$speed.e <- as.numeric(df$speed.c)
  #copy over all values
  df$speed.f <- df$speed.e
  #update those which are Kb/s to Mb/s
  df[which(df$speed.d == "Kb/s"),]$speed.f <- df[which(df$speed.d == "Kb/s"),]$speed.e / 1024

#create summary
  sum <- summary(df$speed.f)  
  #tidy summary
 # summ <- tidy(sum)
  
 # output_text <- summ$mean

  filename <- paste0("summary.txt")
 # cat(paste0("Mean: ", summ$mean), file = filename, sep = "\n")
	cat(paste0("Mean: ",sum[4], " Mb/s"), file = filename, sep = "\n")

	cat(paste0("Last entry: ", df[length(df$date),]$speed.f," ",df[length(df$date),]$speed.d," download as at ",df[length(df$date),]$date," ",df[length(df$date),]$time), file = filename, sep = "\n", append = TRUE)

#> sum <- summary(DATA$ids)

#data.frame(ids=names(sum), nums=sum)
  
#create date time field
    #df$datetime <- paste(df$date, df$time, sep = " ")
    
#plot graphy
    #ggplot(aes(x = df$datetime, y = df$speed.f), data = df) + geom_point()
    #library(scales)
    
    
