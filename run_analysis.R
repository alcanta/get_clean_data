
#############  train folder  ################################

### 
subjectId_train_df <- read.table("./train/subject_train.txt",col.names=c("Subject_ID"))

x_train_df <- read.table("./train/X_train.txt")


### activity_id range from 1 to 6
activityId_train_df <- read.table("./train/y_train.txt",col.names=c("Activity_ID"))


##############cbind the three data frames into one
######add two more columns one with subject_id and one with activity_id

training_df = cbind(subjectId_train_df,activityId_train_df,x_train_df)

############# test folder ##################################

subjectId_test_df <- read.table("./test/subject_test.txt",col.names=c("Subject_ID"))
x_test_df <- read.table("./test/X_test.txt")
activityId_test_df <- read.table("./test/y_test.txt",col.names=c("Activity_ID"))
testing_df <- cbind(subjectId_test_df,activityId_test_df,x_test_df)

############## merge train data set and test data set
merged_df <-rbind(training_df,testing_df)
#################


##################### requirement 2 ###########################

features_df <- read.table("./features.txt",as.is=TRUE,col.names=c("Feature_ID","Feature_Text"))
string_mean_to_match <- "mean()"
string_std_to_match <- "std()"
mean_avg_features_df <- features_df[grepl(string_mean_to_match,features_df$Feature_Text) | grepl(string_std_to_match,features_df$Feature_Text),]

#remove the id and activity columns
merged_df_minus_first_2 <-merged_df[,-1:-2]
avg_std <- merged_df_minus_first_2[mean_avg_features_df$Feature_ID]
#creates a reduced data frame with only 81 features
tidy_1 <-cbind(merged_df[1:2],avg_std)

# requirement 4 -- new names on the columns
#remove the brackets from the column names to prevent eventual conflicts later
for(i in 3:length(tidy_1)) {
  colnames(tidy_1)[i]<-gsub("\\(\\)", "", mean_avg_features_df$Feature_Text[i-2])
}


#requirement 3
activities = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
coloana_activitati <- tidy_1$Activity_ID
for(i in 1:length(coloana_activitati)){
  #print(coloana_activitati[i])
  coloana_activitati[i]=activities[as.numeric(coloana_activitati[i])]
}
tidy_2<-tidy_1[-2]
tidy_2<-cbind(coloana_activitati,tidy_2)
colnames(tidy_2)[1]<-c("Activity")

#############################
#requirement 5
xx <- aggregate(tidy_2[3:81],by=list(tidy_2$Activity,tidy_2$Subject_ID),FUN = mean)

new_names <- colnames(xx)
new_names[1]<-"Activity"
new_names[2]<-"Subject_ID"
for(i in 3:length(xx)){
  new_names[i]<- paste("MEAN[",new_names[i],"]")
}

colnames(xx)<-new_names

write.table(xx,file="output.txt",row.names=FALSE)