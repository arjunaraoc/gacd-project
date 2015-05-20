###gacd-Course project

**run_analysis.R**


Return the tidy dataset from the project
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


This consists  of 

* Subject 'id' vector
* Activity label.
* time domain and frequency domain variable means for all the variables which contain
* various mean,std measurements of total acceleration, body acceleration, angular velocity
 where applicable along the three axes.
 
 
__Sample session__


```
>source("run_analysis.R")
>results<-run_analysis()
>head(results)
```

**sample Code for reading results.txt separately**
```
results<-read.table(results.txt,header=TRUE)
```

**Codebook.MD for the description of variables and the transformations to the data**

**Environment and packages used for development**
```
**SessionInfo**
sessionInfo()
R version 3.1.2 (2014-10-31)
Platform: i686-pc-linux-gnu (32-bit)

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] data.table_1.9.4 reshape2_1.4.1   dplyr_0.4.1     

loaded via a namespace (and not attached):
[1] assertthat_0.1 chron_2.3-45   DBI_0.3.1      magrittr_1.5   parallel_3.1.2 plyr_1.8.1     Rcpp_0.11.5   
[8] stringr_0.6.2  tools_3.1.2 
```

