# Read in the data
    activity<-read.csv("activity.csv")
#    activity$date<-as.Date(activity$date, format="%Y-%m-%d")
# Explore it a little
    summary(activity)
    str(activity)
    
    hist(activity$steps)

    split.steps<-split(activity$steps, activity$date)
    steps.per.day<-sapply(split.steps, sum)

    hist(steps.per.day, col="steelblue", main="Histogram of Total Steps per Day",
         xlab="Steps per Day")
    paste0("Mean = ", round(mean(steps.per.day, na.rm=TRUE), 2)); paste0("Median = ", median(steps.per.day, na.rm=TRUE))

# Time series of "average daily activity"
    #what the hell does this part want?
    #Take an average of all 1st intervals, 2nd intervals accross all days!
    
    split.by.interval<-split(activity$steps, as.factor(activity$interval))
    mean.per.interval<-sapply(split.by.interval, mean, na.rm=TRUE)
    plot(mean.per.interval~names(mean.per.interval), type="l")
    
    
    names(mean.per.interval[mean.per.interval == max(mean.per.interval)])

# Missing Values
    
    #Count the number of rows with N/As
    sum(!complete.cases(activity))

