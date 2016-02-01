#import test and train feature data into R and then combine them into one data set
testData <- read.table("X_test.txt")
trainData <- read.table("X_train.txt")
featureData <- rbind(testData, trainData)

#import test and train subject data
testSubjectData <- read.table("subject_test.txt")
trainSubjectData <- read.table("subject_train.txt")
subjectData <- rbind(testSubjectData, trainSubjectData)
colnames(subjectData)<-'Subject'


#import feature labels as a list
featureList <- read.table("features.txt")

#Subset the stats as a true/false vector
featureSubset <- grepl('mean\\(\\)|std\\(\\)',featureList$V2)

#Convert logical vector character vector
featureStats <- as.character(featureList$V2[featuresSubset])

#Rename columns in featureData set with the feature labels 
colnames(featureData) <- featureList$V2

#Subset the stats (mean and std) using the logical vector
featureData <- featureData[,featureSubset]

#import Activity data files into R and then combine them into one data set
textActivities <- read.table("y_test.txt")
trainActivities <- read.table("y_train.txt")
activeData <- rbind(textActivities, trainActivities)

##recode activity values as descriptive names using the activity labels file 
activeLabels<-read.table("activity_labels.txt")
allActivityData<-join(activeData,activeLabels,by="V1",type="left")

#remove the numeric code allActivity Data file 
allActivityData$V1<- NULL

colnames(allActivityData)<-'Activity'


#Combine all the data (Activity, Subject and Features)
combineData<- cbind(allActivityData, featureData, subjectData)

#Melt data frame for reshaping
newdf <- melt(combineData, id=c("Subject", "Activity"), measure.vars=featureStats)

#Reshape into tidy data frame by mean using the reshape2 package
newdf <- dcast(newdf, Activity + Subject ~ variable, mean)

#Reorder by Subject then Activity
newdf <- newdf[order(newdf$Subject, tdf$Activity),]

#Reindex Rows and move Subject to Column 1
rownames(newdf) <- 1:nrow(newdf)
#tdf <- tdf[,c(2,1,3:68)]

#Output file
write.table(newdf,file="tidy_dataset.txt") 


