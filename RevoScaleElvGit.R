
library(RevoScaleR)
#Data set is so large in order to run it I needed to use RevoScaleR package.

## Data path and file name
bigDataDir <- "G:/Txtfiles"
#two different data files used for different models
DataName <- file.path(bigDataDir, "Year2005_2011NewElv2.txt")
DataName <- file.path(bigDataDir, "Year2005_2011NewElvCol.txt")


## Import data from csv and save it as .xdf file, for future usage (optional) #didnot end up using this
bigAirDS <- rxImport(inData=DataName,stringsAsFactors =TRUE, 
				outFile= file.path(bigDataDir, "df_99_02.xdf"),
				overwrite=TRUE)


model_1 <- rxLogit(SIDS ~Elev_ft+ +Elev_ftsq +DOB_YY + FAGEREC11 + BWTR4 + CIG_REC + MAGER + COMBGEST + MEDUC +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP + UrbanPerc2010,  data=bigAirDS )
summary(model_1)


#use this method
load("G:/CDCdata_destroyby5_29_19/Txtfiles/Year2005_2011NewElv5.RData")
#this is the main model for the project
model_2 <- rxLogit(SIDS ~ElevBucket3 +DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP ,  data=test )
summary(model_2) 

model_3 <- rxLogit(SIDS ~ElevBucket3 +DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP+UrbanPerc2010 ,  data=test )
summary(model_3)

model_4 <- rxLogit(SIDS ~ElevBucket3 +DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP +UrbanPerc2010 +OSTATE,  data=test )
summary(model_4)

#model of elev_ft and elev_ftsq, no urban, no state (+UrbanPerc2010 +OSTATE)

model_5 <- rxLogit(SIDS ~Elev_ft+DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP ,  data=test )
summary(model_5)

model_6 <- rxLogit(SIDS ~Elev_ft+Elev_ftsq+DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP ,  data=test )
summary(model_6)


model_7 <- rxLogit(SIDS ~Elev_ft+DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP+UrbanPerc2010  ,  data=test )
summary(model_7)

model_8 <- rxLogit(SIDS ~Elev_ft+Elev_ftsq+DOB_YY + FAGEREC11 + BWTR4 + CIG_REC_2 + MAGER + COMBGEST + MEDU_2 +DPLURAL + MAR + FRACEREC + MRACEREC + LBO_REC + PREVIS_REC + SEX + UMHISP +UrbanPerc2010 ,  data=test )
summary(model_8)






