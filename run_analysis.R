##  Return the tidy dataset from the project
##  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##  available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##  This consists  of 
##  Subject 'id' vector (ignores NA values)
##  Activity label.
##  time domain and frequency domain variable means for all the variables which contain
##  various mean,std measurements of total acceleration, body acceleration, angular velocity
##  where applicable along the three axes.
##
run_analysis<- function() {
    ##load required libraries
    library(utils)
    ## download file and unzip, if the same does not exist already, makes computation fast for any changes
    zipurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    if (!file.exists("getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")) {
        dflag<-download.file(zipurl,"getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",method="curl")
        if (dflag!=0) {
            cat("Error downloading input files from net, Check your connection and retry")
            stop()
        }
    }
    if(!file.exists("UCI HAR Dataset"))
        unzip("getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
    ## files are in "UCI HAR Dataset" folder
    library("dplyr")
    
    ##setup file names
    ff<-"UCI HAR Dataset/features.txt"
    fr<-read.delim(ff,sep=" ",header=FALSE)

    af<-"UCI HAR Dataset/activity_labels.txt"
    ar<-read.delim(af,sep=" ",header=FALSE)

    tstxf<-"UCI HAR Dataset/test/X_test.txt"
    tstx<-read.table(tstxf)

    names(tstx)<-fr$V2
    tstyf<-"UCI HAR Dataset/test/y_test.txt"
    tsty<-read.delim(tstyf,sep=" ",header=FALSE)

    tstyn<-ar$V2[tsty$V1]
    ##add activity values
    tstx$act<-tstyn
    tstsf<-"UCI HAR Dataset/test/subject_test.txt"
    tsts<-read.delim(tstsf,header=FALSE)

    ##add subject identifier
    tstx$sub_id<-tsts$V1
    ##move sub and act to front
    tstx<-tstx[c(563,562,1:561)]
    
    ## training data
    trnxf<-"UCI HAR Dataset/train/X_train.txt"
    trnx<-read.table(trnxf)

    names(trnx)<-fr$V2
    trnyf<-"UCI HAR Dataset/train/y_train.txt"
    trny<-read.delim(trnyf,sep=" ",header=FALSE)

    trnyn<-ar$V2[trny$V1]

    ##add activity values
    trnx$act<-trnyn
    trnsf<-"UCI HAR Dataset/train/subject_train.txt"
    trns<-read.delim(trnsf,header=FALSE)


    ##add subject identifier
    trnx$sub_id<-trns$V1
    ##move sub and act to front
    trnx<-trnx[c(563,562,1:561)]

    ##combine test and train data frames
    txn<-rbind(tstx,trnx)
    ##select only fields containing -mean or -std
    txn<-txn[c(1,2,grep("-mean|-std",names(txn) ))]
    ##load libraries for reshaping
    library(reshape2)
    library(data.table)
    ##extract relevent data
    mtxn<-melt(txn,id=1:2,measure=-(1:2))
    ## compute mean
    txmean<-dcast(mtxn,sub_id+act ~variable,mean)
    ##change variable names to reflect the computed mean
    for (i in 3:length(names(txmean))) 
        names(txmean)[i]<-paste0(names(txmean)[i],"-mean")
    ##write result
    write.table(txmean,file="result.txt",row.names=FALSE)
    ##return result for checking
    txmean
}


    