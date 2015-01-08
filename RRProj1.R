# Read in the data
    filepath<-getwd()
    activity<-read.csv(file=paste(filepath,"activity.csv", sep="/"))
    activity$date<-as.Date(activity$date)
# Explore it a little
    summary(activity)
    str(activity)
