#########
#this code imports the cdc data from 2005 to 2011 and cleans it into a usable state
#written by rickyj
#some time in 2019

#CDC with State from 2005 to 2011

getwd()
setwd('G:/Txtfiles')

library(stringr)

#this data required reading in lines and parsing the code based on charater local. A real pain to do.
#the file names match those that were shared with the cdc download
#test = readLines("VS11LINK.DETAILUS.AllCnty.txt")

y11 = readLines("VS11LINK.DUSDENOM.AllCnty.txt")
 
head(y11,1)
#check that the code is reading correctly
write.table(head(y11,10), file = paste("DUSDENOM2011head",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")

#parsing the spaces
#test the strings are read in correctly
str_length(y11)
str_sub(y11, 30, 31)

#parsing code #this function splits the read in file by charater spacing this is needed as a function to run on multiple years
Parsedata <- function(y11) {
      
    #remove(c11) #remove any prior just to be safe during testing of function
    c11<-data.frame(str_sub(y11,1,6)) #set up first line
    c11<-data.frame(c11,str_sub(y11,7,7))
    c11<-data.frame(c11,str_sub(y11,8,8))
    c11<-data.frame(c11,str_sub(y11,9,9))
    c11<-data.frame(c11,str_sub(y11,10,14))
    c11<-data.frame(c11,str_sub(y11,15,18))
    c11<-data.frame(c11,str_sub(y11,19,20))
    c11<-data.frame(c11,str_sub(y11,21,24))
    c11<-data.frame(c11,str_sub(y11,25,28))
    c11<-data.frame(c11,str_sub(y11,29,29))
    c11<-data.frame(c11,str_sub(y11,30,31))
    c11<-data.frame(c11,str_sub(y11,32,36))
    c11<-data.frame(c11,str_sub(y11,37,39))
    c11<-data.frame(c11,str_sub(y11,40,40))
    c11<-data.frame(c11,str_sub(y11,41,41))
    c11<-data.frame(c11,str_sub(y11,42,42))
    c11<-data.frame(c11,str_sub(y11,43,58))
    c11<-data.frame(c11,str_sub(y11,59,59))
    c11<-data.frame(c11,str_sub(y11,60,86))
    c11<-data.frame(c11,str_sub(y11,87,87))
    c11<-data.frame(c11,str_sub(y11,88,88))
    c11<-data.frame(c11,str_sub(y11,89,90))
    c11<-data.frame(c11,str_sub(y11,91,92))
    c11<-data.frame(c11,str_sub(y11,93,93))
    c11<-data.frame(c11,str_sub(y11,94,95))
    c11<-data.frame(c11,str_sub(y11,96,108))
    c11<-data.frame(c11,str_sub(y11,109,110))
    c11<-data.frame(c11,str_sub(y11,111,113))
    c11<-data.frame(c11,str_sub(y11,114,116))
    c11<-data.frame(c11,str_sub(y11,117,131))
    c11<-data.frame(c11,str_sub(y11,132,132))
    c11<-data.frame(c11,str_sub(y11,133,136))
    c11<-data.frame(c11,str_sub(y11,137,137))
    c11<-data.frame(c11,str_sub(y11,138,138))
    c11<-data.frame(c11,str_sub(y11,139,140))
    c11<-data.frame(c11,str_sub(y11,141,142))
    c11<-data.frame(c11,str_sub(y11,143,143))
    c11<-data.frame(c11,str_sub(y11,144,144))
    c11<-data.frame(c11,str_sub(y11,145,147))
    c11<-data.frame(c11,str_sub(y11,148,148))
    c11<-data.frame(c11,str_sub(y11,149,149))
    c11<-data.frame(c11,str_sub(y11,150,151))
    c11<-data.frame(c11,str_sub(y11,152,152))
    c11<-data.frame(c11,str_sub(y11,153,153))
    c11<-data.frame(c11,str_sub(y11,154,154))
    c11<-data.frame(c11,str_sub(y11,155,155))
    c11<-data.frame(c11,str_sub(y11,156,174))
    c11<-data.frame(c11,str_sub(y11,175,175))
    c11<-data.frame(c11,str_sub(y11,176,181))
    c11<-data.frame(c11,str_sub(y11,182,183))
    c11<-data.frame(c11,str_sub(y11,184,185))
    c11<-data.frame(c11,str_sub(y11,186,187))
    c11<-data.frame(c11,str_sub(y11,188,189))
    c11<-data.frame(c11,str_sub(y11,190,190))
    c11<-data.frame(c11,str_sub(y11,191,191))
    c11<-data.frame(c11,str_sub(y11,192,194))
    c11<-data.frame(c11,str_sub(y11,195,195))
    c11<-data.frame(c11,str_sub(y11,196,196))
    c11<-data.frame(c11,str_sub(y11,197,197))
    c11<-data.frame(c11,str_sub(y11,198,198))
    c11<-data.frame(c11,str_sub(y11,199,200))
    c11<-data.frame(c11,str_sub(y11,201,207))
    c11<-data.frame(c11,str_sub(y11,208,209))
    c11<-data.frame(c11,str_sub(y11,210,211))
    c11<-data.frame(c11,str_sub(y11,212,212))
    c11<-data.frame(c11,str_sub(y11,213,216))
    c11<-data.frame(c11,str_sub(y11,217,217))
    c11<-data.frame(c11,str_sub(y11,218,244))
    c11<-data.frame(c11,str_sub(y11,245,246))
    c11<-data.frame(c11,str_sub(y11,247,247))
    c11<-data.frame(c11,str_sub(y11,248,269))
    c11<-data.frame(c11,str_sub(y11,270,271))
    c11<-data.frame(c11,str_sub(y11,272,273))
    c11<-data.frame(c11,str_sub(y11,274,275))
    c11<-data.frame(c11,str_sub(y11,276,277))
    c11<-data.frame(c11,str_sub(y11,278,278))
    c11<-data.frame(c11,str_sub(y11,279,279))
    c11<-data.frame(c11,str_sub(y11,280,280))
    c11<-data.frame(c11,str_sub(y11,281,281))
    c11<-data.frame(c11,str_sub(y11,282,283))
    c11<-data.frame(c11,str_sub(y11,284,285))
    c11<-data.frame(c11,str_sub(y11,286,287))
    c11<-data.frame(c11,str_sub(y11,288,289))
    c11<-data.frame(c11,str_sub(y11,290,293))
    c11<-data.frame(c11,str_sub(y11,294,294))
    c11<-data.frame(c11,str_sub(y11,295,312))
    c11<-data.frame(c11,str_sub(y11,313,313))
    c11<-data.frame(c11,str_sub(y11,314,314))
    c11<-data.frame(c11,str_sub(y11,315,315))
    c11<-data.frame(c11,str_sub(y11,316,316))
    c11<-data.frame(c11,str_sub(y11,317,317))
    c11<-data.frame(c11,str_sub(y11,318,318))
    c11<-data.frame(c11,str_sub(y11,319,319))
    c11<-data.frame(c11,str_sub(y11,320,320))
    c11<-data.frame(c11,str_sub(y11,321,321))
    c11<-data.frame(c11,str_sub(y11,322,322))
    c11<-data.frame(c11,str_sub(y11,323,323))
    c11<-data.frame(c11,str_sub(y11,324,324))
    c11<-data.frame(c11,str_sub(y11,325,326))
    c11<-data.frame(c11,str_sub(y11,327,330))
    c11<-data.frame(c11,str_sub(y11,331,331))
    c11<-data.frame(c11,str_sub(y11,332,334))
    c11<-data.frame(c11,str_sub(y11,335,335))
    c11<-data.frame(c11,str_sub(y11,336,336))
    c11<-data.frame(c11,str_sub(y11,337,337))
    c11<-data.frame(c11,str_sub(y11,338,344))
    c11<-data.frame(c11,str_sub(y11,345,345))
    c11<-data.frame(c11,str_sub(y11,346,346))
    c11<-data.frame(c11,str_sub(y11,347,347))
    c11<-data.frame(c11,str_sub(y11,348,348))
    c11<-data.frame(c11,str_sub(y11,349,349))
    c11<-data.frame(c11,str_sub(y11,350,350))
    c11<-data.frame(c11,str_sub(y11,351,351))
    c11<-data.frame(c11,str_sub(y11,352,352))
    c11<-data.frame(c11,str_sub(y11,353,353))
    c11<-data.frame(c11,str_sub(y11,354,354))
    c11<-data.frame(c11,str_sub(y11,355,356))
    c11<-data.frame(c11,str_sub(y11,357,357))
    c11<-data.frame(c11,str_sub(y11,358,358))
    c11<-data.frame(c11,str_sub(y11,359,359))
    c11<-data.frame(c11,str_sub(y11,360,361))
    c11<-data.frame(c11,str_sub(y11,362,362))
    c11<-data.frame(c11,str_sub(y11,363,363))
    c11<-data.frame(c11,str_sub(y11,364,364))
    c11<-data.frame(c11,str_sub(y11,365,365))
    c11<-data.frame(c11,str_sub(y11,366,366))
    c11<-data.frame(c11,str_sub(y11,367,367))
    c11<-data.frame(c11,str_sub(y11,368,368))
    c11<-data.frame(c11,str_sub(y11,369,369))
    c11<-data.frame(c11,str_sub(y11,370,370))
    c11<-data.frame(c11,str_sub(y11,371,371))
    c11<-data.frame(c11,str_sub(y11,372,372))
    c11<-data.frame(c11,str_sub(y11,373,373))
    c11<-data.frame(c11,str_sub(y11,374,374))
    c11<-data.frame(c11,str_sub(y11,375,375))
    c11<-data.frame(c11,str_sub(y11,376,380))
    c11<-data.frame(c11,str_sub(y11,381,381))
    c11<-data.frame(c11,str_sub(y11,382,383))
    c11<-data.frame(c11,str_sub(y11,384,384))
    c11<-data.frame(c11,str_sub(y11,385,391))
    c11<-data.frame(c11,str_sub(y11,392,392))
    c11<-data.frame(c11,str_sub(y11,393,393))
    c11<-data.frame(c11,str_sub(y11,394,394))
    c11<-data.frame(c11,str_sub(y11,395,398))
    c11<-data.frame(c11,str_sub(y11,399,399))
    c11<-data.frame(c11,str_sub(y11,400,400))
    c11<-data.frame(c11,str_sub(y11,401,401))
    c11<-data.frame(c11,str_sub(y11,402,402))
    c11<-data.frame(c11,str_sub(y11,403,403))
    c11<-data.frame(c11,str_sub(y11,404,404))
    c11<-data.frame(c11,str_sub(y11,405,405))
    c11<-data.frame(c11,str_sub(y11,406,406))
    c11<-data.frame(c11,str_sub(y11,407,407))
    c11<-data.frame(c11,str_sub(y11,408,408))
    c11<-data.frame(c11,str_sub(y11,409,409))
    c11<-data.frame(c11,str_sub(y11,410,410))
    c11<-data.frame(c11,str_sub(y11,411,411))
    c11<-data.frame(c11,str_sub(y11,412,412))
    c11<-data.frame(c11,str_sub(y11,413,413))
    c11<-data.frame(c11,str_sub(y11,414,414))
    c11<-data.frame(c11,str_sub(y11,415,415))
    c11<-data.frame(c11,str_sub(y11,417,417))
    c11<-data.frame(c11,str_sub(y11,418,418))
    c11<-data.frame(c11,str_sub(y11,420,420))
    c11<-data.frame(c11,str_sub(y11,421,422))
    c11<-data.frame(c11,str_sub(y11,423,423))
    c11<-data.frame(c11,str_sub(y11,424,424))
    c11<-data.frame(c11,str_sub(y11,425,425))
    c11<-data.frame(c11,str_sub(y11,426,435))
    c11<-data.frame(c11,str_sub(y11,436,436))
    c11<-data.frame(c11,str_sub(y11,437,437))
    c11<-data.frame(c11,str_sub(y11,438,439))
    c11<-data.frame(c11,str_sub(y11,440,441))
    c11<-data.frame(c11,str_sub(y11,442,445))
    c11<-data.frame(c11,str_sub(y11,446,447))
    c11<-data.frame(c11,str_sub(y11,448,450))
    c11<-data.frame(c11,str_sub(y11,451,452))
    c11<-data.frame(c11,str_sub(y11,453,454))
    c11<-data.frame(c11,str_sub(y11,455,455))
    c11<-data.frame(c11,str_sub(y11,456,456))
    c11<-data.frame(c11,str_sub(y11,457,457))
    c11<-data.frame(c11,str_sub(y11,458,466))
    c11<-data.frame(c11,str_sub(y11,467,470))
    c11<-data.frame(c11,str_sub(y11,471,472))
    c11<-data.frame(c11,str_sub(y11,473,473))
    c11<-data.frame(c11,str_sub(y11,474,475))
    c11<-data.frame(c11,str_sub(y11,476,476))
    c11<-data.frame(c11,str_sub(y11,477,477))
    c11<-data.frame(c11,str_sub(y11,478,478))
    c11<-data.frame(c11,str_sub(y11,479,479))
    c11<-data.frame(c11,str_sub(y11,480,480))
    c11<-data.frame(c11,str_sub(y11,481,481))
    c11<-data.frame(c11,str_sub(y11,482,482))
    c11<-data.frame(c11,str_sub(y11,483,491))
    c11<-data.frame(c11,str_sub(y11,492,492))
    c11<-data.frame(c11,str_sub(y11,493,493))
    c11<-data.frame(c11,str_sub(y11,494,494))
    c11<-data.frame(c11,str_sub(y11,495,495))
    c11<-data.frame(c11,str_sub(y11,496,496))
    c11<-data.frame(c11,str_sub(y11,497,497))
    c11<-data.frame(c11,str_sub(y11,498,498))
    c11<-data.frame(c11,str_sub(y11,499,499))
    c11<-data.frame(c11,str_sub(y11,500,500))
    c11<-data.frame(c11,str_sub(y11,501,501))
    c11<-data.frame(c11,str_sub(y11,502,502))
    c11<-data.frame(c11,str_sub(y11,503,503))
    c11<-data.frame(c11,str_sub(y11,504,504))
    c11<-data.frame(c11,str_sub(y11,505,505))
    c11<-data.frame(c11,str_sub(y11,506,512))
    c11<-data.frame(c11,str_sub(y11,513,513))
    c11<-data.frame(c11,str_sub(y11,514,517))
    c11<-data.frame(c11,str_sub(y11,518,518))
    c11<-data.frame(c11,str_sub(y11,519,520))
    c11<-data.frame(c11,str_sub(y11,521,521))
    c11<-data.frame(c11,str_sub(y11,522,522))
    c11<-data.frame(c11,str_sub(y11,523,523))
    c11<-data.frame(c11,str_sub(y11,524,525))
    c11<-data.frame(c11,str_sub(y11,526,526))
    c11<-data.frame(c11,str_sub(y11,527,527))
    c11<-data.frame(c11,str_sub(y11,528,528))
    c11<-data.frame(c11,str_sub(y11,529,532))
    c11<-data.frame(c11,str_sub(y11,533,533))
    c11<-data.frame(c11,str_sub(y11,534,536))
    c11<-data.frame(c11,str_sub(y11,537,538))
    c11<-data.frame(c11,str_sub(y11,539,541))
    c11<-data.frame(c11,str_sub(y11,542,543))
    c11<-data.frame(c11,str_sub(y11,544,546))
    c11<-data.frame(c11,str_sub(y11,547,548))
    c11<-data.frame(c11,str_sub(y11,549,551))
    c11<-data.frame(c11,str_sub(y11,552,554))
    c11<-data.frame(c11,str_sub(y11,555,556))
    c11<-data.frame(c11,str_sub(y11,557,557))
    c11<-data.frame(c11,str_sub(y11,558,568))
    c11<-data.frame(c11,str_sub(y11,569,569))
    c11<-data.frame(c11,str_sub(y11,570,570))
    c11<-data.frame(c11,str_sub(y11,571,571))
    c11<-data.frame(c11,str_sub(y11,572,572))
    c11<-data.frame(c11,str_sub(y11,573,573))
    c11<-data.frame(c11,str_sub(y11,574,574))
    c11<-data.frame(c11,str_sub(y11,575,575))
    c11<-data.frame(c11,str_sub(y11,576,576))
    c11<-data.frame(c11,str_sub(y11,577,577))
    c11<-data.frame(c11,str_sub(y11,578,578))
    c11<-data.frame(c11,str_sub(y11,579,579))
    c11<-data.frame(c11,str_sub(y11,580,580))
    c11<-data.frame(c11,str_sub(y11,581,581))
    c11<-data.frame(c11,str_sub(y11,582,582))
    c11<-data.frame(c11,str_sub(y11,583,583))
    c11<-data.frame(c11,str_sub(y11,584,584))
    c11<-data.frame(c11,str_sub(y11,585,585))
    c11<-data.frame(c11,str_sub(y11,586,586))
    c11<-data.frame(c11,str_sub(y11,587,587))
    c11<-data.frame(c11,str_sub(y11,588,588))
    c11<-data.frame(c11,str_sub(y11,589,589))
    c11<-data.frame(c11,str_sub(y11,590,590))
    c11<-data.frame(c11,str_sub(y11,591,591))
    c11<-data.frame(c11,str_sub(y11,592,592))
    c11<-data.frame(c11,str_sub(y11,593,593))
    c11<-data.frame(c11,str_sub(y11,594,594))
    c11<-data.frame(c11,str_sub(y11,595,595))
    c11<-data.frame(c11,str_sub(y11,596,596))
    c11<-data.frame(c11,str_sub(y11,597,597))
    c11<-data.frame(c11,str_sub(y11,598,598))
    c11<-data.frame(c11,str_sub(y11,600,600))
    c11<-data.frame(c11,str_sub(y11,601,601))
    c11<-data.frame(c11,str_sub(y11,602,602))
    c11<-data.frame(c11,str_sub(y11,603,603))
    c11<-data.frame(c11,str_sub(y11,604,604))
    c11<-data.frame(c11,str_sub(y11,605,605))
    c11<-data.frame(c11,str_sub(y11,606,606))
    c11<-data.frame(c11,str_sub(y11,607,607))
    c11<-data.frame(c11,str_sub(y11,608,608))
    c11<-data.frame(c11,str_sub(y11,609,609))
    c11<-data.frame(c11,str_sub(y11,610,610))
    c11<-data.frame(c11,str_sub(y11,611,611))
    c11<-data.frame(c11,str_sub(y11,612,612))
    c11<-data.frame(c11,str_sub(y11,613,613))
    c11<-data.frame(c11,str_sub(y11,614,614))
    c11<-data.frame(c11,str_sub(y11,615,615))
    c11<-data.frame(c11,str_sub(y11,616,616))
    c11<-data.frame(c11,str_sub(y11,617,618))
    c11<-data.frame(c11,str_sub(y11,619,619))
    c11<-data.frame(c11,str_sub(y11,620,620))
    c11<-data.frame(c11,str_sub(y11,621,621))
    c11<-data.frame(c11,str_sub(y11,622,622))
    c11<-data.frame(c11,str_sub(y11,623,623))
    c11<-data.frame(c11,str_sub(y11,624,624))
    c11<-data.frame(c11,str_sub(y11,625,625))
    c11<-data.frame(c11,str_sub(y11,626,626))
    c11<-data.frame(c11,str_sub(y11,627,627))
    c11<-data.frame(c11,str_sub(y11,628,628))
    c11<-data.frame(c11,str_sub(y11,629,629))
    c11<-data.frame(c11,str_sub(y11,630,630))
    c11<-data.frame(c11,str_sub(y11,631,631))
    c11<-data.frame(c11,str_sub(y11,632,632))
    c11<-data.frame(c11,str_sub(y11,633,633))
    c11<-data.frame(c11,str_sub(y11,634,634))
    c11<-data.frame(c11,str_sub(y11,635,635))
    c11<-data.frame(c11,str_sub(y11,636,636))
    c11<-data.frame(c11,str_sub(y11,637,637))
    c11<-data.frame(c11,str_sub(y11,638,638))
    c11<-data.frame(c11,str_sub(y11,639,639))
    c11<-data.frame(c11,str_sub(y11,640,640))
    c11<-data.frame(c11,str_sub(y11,641,641))
    c11<-data.frame(c11,str_sub(y11,642,642))
    c11<-data.frame(c11,str_sub(y11,643,643))
    c11<-data.frame(c11,str_sub(y11,644,644))
    c11<-data.frame(c11,str_sub(y11,645,645))
    c11<-data.frame(c11,str_sub(y11,646,646))
    c11<-data.frame(c11,str_sub(y11,647,647))
    c11<-data.frame(c11,str_sub(y11,648,648))
    c11<-data.frame(c11,str_sub(y11,649,651))
    c11<-data.frame(c11,str_sub(y11,652,652))
    c11<-data.frame(c11,str_sub(y11,653,653))
    c11<-data.frame(c11,str_sub(y11,654,667))
    c11<-data.frame(c11,str_sub(y11,668,668))
    c11<-data.frame(c11,str_sub(y11,669,670))
    c11<-data.frame(c11,str_sub(y11,670,670))
    c11<-data.frame(c11,str_sub(y11,671,671))
    c11<-data.frame(c11,str_sub(y11,672,672))
    c11<-data.frame(c11,str_sub(y11,673,673))
    c11<-data.frame(c11,str_sub(y11,674,674))
    c11<-data.frame(c11,str_sub(y11,675,675))
    c11<-data.frame(c11,str_sub(y11,676,676))
    c11<-data.frame(c11,str_sub(y11,677,677))
    c11<-data.frame(c11,str_sub(y11,678,678))
    c11<-data.frame(c11,str_sub(y11,679,679))
    c11<-data.frame(c11,str_sub(y11,680,683))
    c11<-data.frame(c11,str_sub(y11,684,684))
    c11<-data.frame(c11,str_sub(y11,685,687))
    c11<-data.frame(c11,str_sub(y11,688,688))
    c11<-data.frame(c11,str_sub(y11,689,689))
    c11<-data.frame(c11,str_sub(y11,690,690))
    c11<-data.frame(c11,str_sub(y11,691,702))
    c11<-data.frame(c11,str_sub(y11,703,703))
    c11<-data.frame(c11,str_sub(y11,704,704))
    c11<-data.frame(c11,str_sub(y11,705,705))
    c11<-data.frame(c11,str_sub(y11,706,711))
    c11<-data.frame(c11,str_sub(y11,712,712))
    c11<-data.frame(c11,str_sub(y11,713,717))
    c11<-data.frame(c11,str_sub(y11,718,718))
    c11<-data.frame(c11,str_sub(y11,719,720))
    c11<-data.frame(c11,str_sub(y11,721,721))
    c11<-data.frame(c11,str_sub(y11,722,733))
    c11<-data.frame(c11,str_sub(y11,734,734))
    c11<-data.frame(c11,str_sub(y11,735,735))
    c11<-data.frame(c11,str_sub(y11,736,751))
    c11<-data.frame(c11,str_sub(y11,752,752))
    c11<-data.frame(c11,str_sub(y11,753,753))
    c11<-data.frame(c11,str_sub(y11,754,760))
    c11<-data.frame(c11,str_sub(y11,761,761))
    c11<-data.frame(c11,str_sub(y11,762,765))
    c11<-data.frame(c11,str_sub(y11,766,766))
    c11<-data.frame(c11,str_sub(y11,767,768))
    c11<-data.frame(c11,str_sub(y11,769,769))
    c11<-data.frame(c11,str_sub(y11,770,770))
    c11<-data.frame(c11,str_sub(y11,771,771))
    c11<-data.frame(c11,str_sub(y11,772,867))
    c11<-data.frame(c11,str_sub(y11,868,868))
    c11<-data.frame(c11,str_sub(y11,869,871))
    c11<-data.frame(c11,str_sub(y11,872,874))
    c11<-data.frame(c11,str_sub(y11,875,875))
    c11<-data.frame(c11,str_sub(y11,876,877))
    c11<-data.frame(c11,str_sub(y11,878,878))
    c11<-data.frame(c11,str_sub(y11,879,879))
    c11<-data.frame(c11,str_sub(y11,880,880))
    c11<-data.frame(c11,str_sub(y11,881,881))
    c11<-data.frame(c11,str_sub(y11,882,882))
    c11<-data.frame(c11,str_sub(y11,883,883))
    c11<-data.frame(c11,str_sub(y11,884,887))
    c11<-data.frame(c11,str_sub(y11,888,888))
    c11<-data.frame(c11,str_sub(y11,889,891))
    c11<-data.frame(c11,str_sub(y11,892,892))
    c11<-data.frame(c11,str_sub(y11,893,900))
    #Here ends the cohort denominator-plus file. The numerator (linked) file continues below.
    c11<-data.frame(c11,str_sub(y11,901,902))
    c11<-data.frame(c11,str_sub(y11,903,904))
    c11<-data.frame(c11,str_sub(y11,905,911))
    c11<-data.frame(c11,str_sub(y11,912,918))
    c11<-data.frame(c11,str_sub(y11,919,925))
    c11<-data.frame(c11,str_sub(y11,926,932))
    c11<-data.frame(c11,str_sub(y11,933,939))
    c11<-data.frame(c11,str_sub(y11,940,946))
    c11<-data.frame(c11,str_sub(y11,947,953))
    c11<-data.frame(c11,str_sub(y11,954,960))
    c11<-data.frame(c11,str_sub(y11,961,967))
    c11<-data.frame(c11,str_sub(y11,968,974))
    c11<-data.frame(c11,str_sub(y11,975,981))
    c11<-data.frame(c11,str_sub(y11,982,988))
    c11<-data.frame(c11,str_sub(y11,989,995))
    c11<-data.frame(c11,str_sub(y11,996,1002))
    c11<-data.frame(c11,str_sub(y11,1003,1009))
    c11<-data.frame(c11,str_sub(y11,1010,1016))
    c11<-data.frame(c11,str_sub(y11,1017,1023))
    c11<-data.frame(c11,str_sub(y11,1024,1030))
    c11<-data.frame(c11,str_sub(y11,1031,1037))
    c11<-data.frame(c11,str_sub(y11,1038,1044))
    c11<-data.frame(c11,str_sub(y11,1045,1046))
    c11<-data.frame(c11,str_sub(y11,1047,1048))
    c11<-data.frame(c11,str_sub(y11,1049,1053))
    c11<-data.frame(c11,str_sub(y11,1054,1058))
    c11<-data.frame(c11,str_sub(y11,1059,1063))
    c11<-data.frame(c11,str_sub(y11,1064,1068))
    c11<-data.frame(c11,str_sub(y11,1069,1073))
    c11<-data.frame(c11,str_sub(y11,1074,1078))
    c11<-data.frame(c11,str_sub(y11,1079,1083))
    c11<-data.frame(c11,str_sub(y11,1084,1088))
    c11<-data.frame(c11,str_sub(y11,1089,1093))
    c11<-data.frame(c11,str_sub(y11,1094,1098))
    c11<-data.frame(c11,str_sub(y11,1099,1103))
    c11<-data.frame(c11,str_sub(y11,1104,1108))
    c11<-data.frame(c11,str_sub(y11,1109,1113))
    c11<-data.frame(c11,str_sub(y11,1114,1118))
    c11<-data.frame(c11,str_sub(y11,1119,1123))
    c11<-data.frame(c11,str_sub(y11,1124,1128))
    c11<-data.frame(c11,str_sub(y11,1129,1133))
    c11<-data.frame(c11,str_sub(y11,1134,1138))
    c11<-data.frame(c11,str_sub(y11,1139,1143))
    c11<-data.frame(c11,str_sub(y11,1144,1148))
    c11<-data.frame(c11,str_sub(y11,1149,1150))
    c11<-data.frame(c11,str_sub(y11,1151,1151))
    c11<-data.frame(c11,str_sub(y11,1152,1153))
    c11<-data.frame(c11,str_sub(y11,1154,1156))
    c11<-data.frame(c11,str_sub(y11,1157,1159))
    c11<-data.frame(c11,str_sub(y11,1160,1161))
    c11<-data.frame(c11,str_sub(y11,1162,1163))
    c11<-data.frame(c11,str_sub(y11,1164,1165))
    c11<-data.frame(c11,str_sub(y11,1166,1168))
    c11<-data.frame(c11,str_sub(y11,1169,1181))
    c11<-data.frame(c11,str_sub(y11,1182,1182))
    c11<-data.frame(c11,str_sub(y11,1183,1185))
    c11<-data.frame(c11,str_sub(y11,1186,1186))
    c11<-data.frame(c11,str_sub(y11,1187,1187))
    c11<-data.frame(c11,str_sub(y11,1188,1191))
    c11<-data.frame(c11,str_sub(y11,1192,1257))
    c11<-data.frame(c11,str_sub(y11,1258,1259))
    
    

           
    #names(c11)<-c("FILLER","VERSION","FILLER","LATEREC","SEQNUM","DOB_YY","DOB_MM","FILLER","DOB_TT","DOB_WK","OSTATE","FILLER","OCNTYFIPS","OCNTYPOP","BFACIL","UBFACIL","FILLER","BFACIL3","FILLER","MAGE_IMPFLG","MAGE_REPFLG","MAGER","MAGER14","MAGER9","MBCNTRY","FILLER","MRSTATEPSTL","FILLER","MRCNTY","FILLER","RCNTY_POP","FILLER","RECTYPE","RESTATUS","MBRACE","MRACE","MRACEREC","MRACEIMP","FILLER","UMHISP","MRACEHISP","FILLER","MAR_P","MAR","MAR_IMP","MEDUC","FILLER","FAGERPT_FLG","FILLER","FAGECOMB","UFAGECOMB","FAGEREC11","FBRACE","FILLER","FRACEREC","FILLER","UFHISP","FRACEHISP","FEDUC","FILLER","UFRACE","FILLER","PRIORTERM","FILLER","LBO_REC","FILLER","TBO_REC","FILLER","PRECARE","PRECARE_REC","FILLER","UPREVIS","PREVIS_REC","FILLER","WTGAIN","WTGAIN_REC","FILLER","DFPC_IMP","WIC","CIG_0","CIG_1","CIG_2","CIG_3","FILLER","CIG_REC","FILLER","RF_DIAB","RF_GEST","RF_PHYP","RF_GHYP","RF_ECLAM","RF_PPTERM","RF_PPOUTC","FILLER","RF_INFTR","RF_FEDRG","RF_ARTEC","RF_CESAR","RF_CESARN","FILLER","URF_DIAB","FILLER","URF_CHYPER","URF_PHYPER","URF_ECLAM","FILLER","IP_GONN","IP_SYPH","FILLER","IP_CHLAM","IP_HEPB","IP_HEPC","OP_CERV","OP_TOCOL","OP_ECVS","OP_ECVF","FILLER","UOP_INDUC","FILLER","UOP_TOCOL","FILLER","ON_RUPTR","ON_PRECIP","ON_PROL","LD_INDL","LD_AUGM","FILLER","LD_STER","LD_ANTI","LD_CHOR","LD_MECS","LD_FINT","LD_ANES","FILLER","ULD_MECO","FILLER","ULD_PRECIP","FILLER","ULD_BREECH","FILLER","ME_PRES","ME_ROUT","ME_TRIAL","FILLER","UME_FORCP","UME_VAC","RDMETH_REC","FILLER","DMETH_REC","MM_MTR","MM_PLAC","MM_RUPT","MM_UHYST","MM_ICU","MM_UOPER","ATTEND","MTRAN","PAY","PAYR","FILLER","APGAR5","APGAR5R","APGAR10","APGAR10R","FILLER","DPLURAL","FILLER","IMP_PLUR","FILLER","SEX","IMP_SEX","DLMP_MM","FILLER","DLMP_YY","ESTGEST","FILLER","COMBGEST","GESTREC10","GESTREC3","OBGEST_FLG","GEST_IMP","FILLER","BRTHWGT","BWTR14","BWTR4","FILLER","AB_AVEN1","AB_AVEN6","AB_NICU","AB_SURF","AB_ANTI","AB_SEIZ","AB_BINJ","FILLER","CA_ANEN","CA_MNSB","CA_CCHD","CA_CDH","CA_OMPH","CA_GAST","CA_LIMB","CA_CLEFT","CA_CLPAL","CA_DOWN","CA_DISOR","CA_HYPO","UCA_ANEN","UCA_SPINA","FILLER","UCA_OMPHA","FILLER","UCA_CELFTLP","FILLER","UCA_HERNIA","FILLER","UCA_DOWNS","FILLER","ITRAN","ILIVE","BFED","FILLER","BMI_R","ILLB_R","ILLB_R11","ILOP_R","ILOP","ILP","ILP_R11","PWgt_R","DWgt_R","M_Ht_In","SetOrder_R","FILLER","F_MORIGIN","F_FORIGIN","F_MEDUC","F_FEDUC","F_CLINEST","F_APGAR5","F_TOBACO","F_M_HT","F_PWGT","F_DWGT","F_WIC","F_PAY","F_BFED","F_RF_PDIAB","F_RF_GDIAB","F_RF_PHYPER","F_RF_GHYPER","F_RF_ECLAMP","F_RF_PPB","F_RF_PPO","FILLER","F_RF_INFT","F_RF_INFT_DRG","F_RF_INF_ART","F_RF_CESAR","F_RF_NCESAR","F_IP_GONOR","F_IP_SYPH","FILLER","F_IP_CHLAM","F_IP_HEPATC","F_OB_CERVIC","F_OB_TOCO","F_OB_SUCC","F_OB_FAIL","F_OL_RUPTURE","F_OL_PRECIP","F_OL_PROLONG","F_LD_INDUCT","F_LD_AUGMENTAugmentation","FILLER","F_LD_STERIODS","F_LD_ANTIBIO","F_LD_CHORIO","F_LD_MECON","F_LD_FINTOL","F_LD_ANESTH","FILLER","F_MD_PRESENT","F_MD_ROUTE","F_MD_TRIAL","F_MM_MTRANS","F_MM_LACER","F_MM_RUPTUR","F_MM_UHYSTR","F_MM_ICU","F_MM_OR","F_AB_VENT","F_AB_VENT","F_AB_NIUC","F_AB_SURFAC","F_AB_ANTIBIO","F_AB_SEIZ","F_AB_INJ","F_CA_ANEN","F_CA_MENIN","F_CA_HEART","F_CA_HERNIA","F_CA_OMPHA","F_CA_GASTRO","F_CA_LIMB","F_CA_CLEFTLP","F_CA_CLEFT","F_CA_DOWNS","F_CA_CHROM","F_CA_HYPOS","FILLER","F_WTGAIN","FILLER","F_MAR_G","F_MAR_P","FILLER","F_MPCB","FILLER","FILLER","F_TPCV","F_CIGS_0","F_CIGS_1","F_CIGS_2","F_CIGS_3","F_FACILITY","FILLER","F_PAY_REC","F_RDMETH_REC","FILLER","F_URF_DIABETES","FILLER","F_URF_CHYPER","F_URF_PHYPER","F_URF_ECLAMP","FILLER","F_UOB_INDUCT","FILLER","F_UOB_TOCOL","FILLER","F_ULD_MECONIUM","FILLER","F_ULD_PRECIP","FILLER","F_ULD_BREECH","FILLER","F_U_FORCEP","F_U_VACUUM","FILLER","F_UCA_ANEN","F_UCA_SPINA","FILLER","F_UCA_OMPHALO","FILLER","F_UCA_CLEFTLPCleft","FILLER","F_UCA_HERNIA","FILLER","F_UCA_DOWNS","FILLER","FLGND","FILLER","AGED","AGER5","AGER22","MANNER","DISPO","AUTOPSY","FILLER","PLACE","FILLER","UC0D","FILLER","UCODR130","FILLER","RECWT")

    #denomanoator names #this assigns the right column names to the files filler means empty space to be removed later
    names(c11)<-c("FILLER","VERSION","FILLER","LATEREC","SEQNUM","DOB_YY","DOB_MM","FILLER","DOB_TT","DOB_WK","OSTATE","FILLER","OCNTYFIPS","OCNTYPOP","BFACIL","UBFACIL","FILLER","BFACIL3","FILLER","MAGE_IMPFLG","MAGE_REPFLG","MAGER","MAGER14","MAGER9","MBCNTRY","FILLER","MRSTATEPSTL","FILLER","MRCNTY","FILLER","RCNTY_POP","FILLER","RECTYPE","RESTATUS","MBRACE","MRACE","MRACEREC","MRACEIMP","FILLER","UMHISP","MRACEHISP","FILLER","MAR_P","MAR","MAR_IMP","MEDUC","FILLER","FAGERPT_FLG","FILLER","FAGECOMB","UFAGECOMB","FAGEREC11","FBRACE","FILLER","FRACEREC","FILLER","UFHISP","FRACEHISP","FEDUC","FILLER","UFRACE","FILLER","PRIORTERM","FILLER","LBO_REC","FILLER","TBO_REC","FILLER","PRECARE","PRECARE_REC","FILLER","UPREVIS","PREVIS_REC","FILLER","WTGAIN","WTGAIN_REC","FILLER","DFPC_IMP","WIC","CIG_0","CIG_1","CIG_2","CIG_3","FILLER","CIG_REC","FILLER","RF_DIAB","RF_GEST","RF_PHYP","RF_GHYP","RF_ECLAM","RF_PPTERM","RF_PPOUTC","FILLER","RF_INFTR","RF_FEDRG","RF_ARTEC","RF_CESAR","RF_CESARN","FILLER","URF_DIAB","FILLER","URF_CHYPER","URF_PHYPER","URF_ECLAM","FILLER","IP_GONN","IP_SYPH","FILLER","IP_CHLAM","IP_HEPB","IP_HEPC","OP_CERV","OP_TOCOL","OP_ECVS","OP_ECVF","FILLER","UOP_INDUC","FILLER","UOP_TOCOL","FILLER","ON_RUPTR","ON_PRECIP","ON_PROL","LD_INDL","LD_AUGM","FILLER","LD_STER","LD_ANTI","LD_CHOR","LD_MECS","LD_FINT","LD_ANES","FILLER","ULD_MECO","FILLER","ULD_PRECIP","FILLER","ULD_BREECH","FILLER","ME_PRES","ME_ROUT","ME_TRIAL","FILLER","UME_FORCP","UME_VAC","RDMETH_REC","FILLER","DMETH_REC","MM_MTR","MM_PLAC","MM_RUPT","MM_UHYST","MM_ICU","MM_UOPER","ATTEND","MTRAN","PAY","PAYR","FILLER","APGAR5","APGAR5R","APGAR10","APGAR10R","FILLER","DPLURAL","FILLER","IMP_PLUR","FILLER","SEX","IMP_SEX","DLMP_MM","FILLER","DLMP_YY","ESTGEST","FILLER","COMBGEST","GESTREC10","GESTREC3","OBGEST_FLG","GEST_IMP","FILLER","BRTHWGT","BWTR14","BWTR4","FILLER","AB_AVEN1","AB_AVEN6","AB_NICU","AB_SURF","AB_ANTI","AB_SEIZ","AB_BINJ","FILLER","CA_ANEN","CA_MNSB","CA_CCHD","CA_CDH","CA_OMPH","CA_GAST","CA_LIMB","CA_CLEFT","CA_CLPAL","CA_DOWN","CA_DISOR","CA_HYPO","UCA_ANEN","UCA_SPINA","FILLER","UCA_OMPHA","FILLER","UCA_CELFTLP","FILLER","UCA_HERNIA","FILLER","UCA_DOWNS","FILLER","ITRAN","ILIVE","BFED","FILLER","BMI_R","ILLB_R","ILLB_R11","ILOP_R","ILOP","ILP","ILP_R11","PWgt_R","DWgt_R","M_Ht_In","SetOrder_R","FILLER","F_MORIGIN","F_FORIGIN","F_MEDUC","F_FEDUC","F_CLINEST","F_APGAR5","F_TOBACO","F_M_HT","F_PWGT","F_DWGT","F_WIC","F_PAY","F_BFED","F_RF_PDIAB","F_RF_GDIAB","F_RF_PHYPER","F_RF_GHYPER","F_RF_ECLAMP","F_RF_PPB","F_RF_PPO","FILLER","F_RF_INFT","F_RF_INFT_DRG","F_RF_INF_ART","F_RF_CESAR","F_RF_NCESAR","F_IP_GONOR","F_IP_SYPH","FILLER","F_IP_CHLAM","F_IP_HEPATC","F_OB_CERVIC","F_OB_TOCO","F_OB_SUCC","F_OB_FAIL","F_OL_RUPTURE","F_OL_PRECIP","F_OL_PROLONG","F_LD_INDUCT","F_LD_AUGMENTAugmentation","FILLER","F_LD_STERIODS","F_LD_ANTIBIO","F_LD_CHORIO","F_LD_MECON","F_LD_FINTOL","F_LD_ANESTH","FILLER","F_MD_PRESENT","F_MD_ROUTE","F_MD_TRIAL","F_MM_MTRANS","F_MM_LACER","F_MM_RUPTUR","F_MM_UHYSTR","F_MM_ICU","F_MM_OR","F_AB_VENT","F_AB_VENT","F_AB_NIUC","F_AB_SURFAC","F_AB_ANTIBIO","F_AB_SEIZ","F_AB_INJ","F_CA_ANEN","F_CA_MENIN","F_CA_HEART","F_CA_HERNIA","F_CA_OMPHA","F_CA_GASTRO","F_CA_LIMB","F_CA_CLEFTLP","F_CA_CLEFT","F_CA_DOWNS","F_CA_CHROM","F_CA_HYPOS","FILLER","F_WTGAIN","FILLER","F_MAR_G","F_MAR_P","FILLER","F_MPCB","FILLER","FILLER","F_TPCV","F_CIGS_0","F_CIGS_1","F_CIGS_2","F_CIGS_3","F_FACILITY","FILLER","F_PAY_REC","F_RDMETH_REC","FILLER","F_URF_DIABETES","FILLER","F_URF_CHYPER","F_URF_PHYPER","F_URF_ECLAMP","FILLER","F_UOB_INDUCT","FILLER","F_UOB_TOCOL","FILLER","F_ULD_MECONIUM","FILLER","F_ULD_PRECIP","FILLER","F_ULD_BREECH","FILLER","F_U_FORCEP","F_U_VACUUM","FILLER","F_UCA_ANEN","F_UCA_SPINA","FILLER","F_UCA_OMPHALO","FILLER","F_UCA_CLEFTLPCleft","FILLER","F_UCA_HERNIA","FILLER","F_UCA_DOWNS","FILLER","FLGND","FILLER","AGED","AGER5","AGER22","MANNER","DISPO","AUTOPSY","FILLER","PLACE","FILLER","UC0D","FILLER","UCODR130","FILLER","RECWT",
                  "FILLER","EANUM","1st","2nd","3rd","4th","5th","6th","7th","8th","9th","10th","11th","12th","13th","14th","15th","16th","17th","18th","19th","20th","FILLER","RANUM","1st","2nd","3rd","4th","5th","6th","7th","8th","9th","10th","11th","12th","13th","14th","15th","16th","17th","18th","19th","20th","FILLER","D_RESTATUS","STOCCFIPD","CNTOCFIPD","FILLER","STRESFIPD","FILLER","DRCNTY","CNTYRFPD","FILLER","CNTRSPPD","FILLER","HOSPD","WEEKDAYD","DTHYR","FILLER","DOD_MM")

    return(c11)
}


#use to check parsing when testing function
head(c11,1)
write.table(head(c11,1000), file = paste("ParseTesthead",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")

table(c11$UC0D)
grep('w75',y11)
dim(c11)

#testing out 2011 data
y2011<-rbind(tempdeaths,tempbirth)

#create a new text file that is parsed nicely so I can read in later and not have to rerun this code
write.table(y2011, file = paste("y2011",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")
remove(y2011)

##########Updating my deck
#I can run just the death files and pull out the W75,R99,R95 deaths

#read in years 2005 -2011
d05 = readLines("VS05LINK.DUSNUMER.AllCnty.txt") 
d06 = readLines("VS06LINK.DUSNUMER.AllCnty.txt") 
d07 = readLines("VS07LINK.DETAILUS.AllCnty.txt")
d08 = readLines("VS08LINK.DETAILUS.AllCnty.txt")
d09 = readLines("VS09LINK.DETAILUS.AllCnty.txt")
d10 = readLines("VS10LINK.DETAILUS.AllCnty.txt")
d11 = readLines("VS11LINK.DETAILUS.AllCnty.txt")

#parse years 2005 -2011
d05<-Parsedata(d05)
d06<-Parsedata(d06)
d07<-Parsedata(d07)
d08<-Parsedata(d08)
d09<-Parsedata(d09)
d10<-Parsedata(d10)
d11<-Parsedata(d11)

#check data
head(d11)
table(d11$UC0D == 'R99' | d11$UC0D == 'R95' |d11$UC0D == 'W75' )

#combine all the data together into one large file
dall<-rbind(d05,d06,d07,d08,d09,d10,d11)

#write all deaths to file to re upload later and not rerun all this code
write.table(dall, file = paste("dall",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")

grep('UCOD',names(dall)) #find the death code.  some files have strange names where sometimes its a 0 sometimes and O in the original downloadable files from the cdc site
names(dall)[372] #check it

table(dall$UC0D == 'R99') #check how many R99s

dall$UC0D<-trimws(dall$UC0D) #sometimes white space in the death code field

#more data checks
table(dall$DOB_YY)
table(dall$OSTATE)
#check the 3 codes of concern
table(dall$UC0D == 'R99' | dall$UC0D == 'R95' | dall$UC0D == 'W75')
#check by year
table(dall$DOB_YY, (dall$UC0D == 'R99' | dall$UC0D == 'R95' | dall$UC0D == 'W75'))


#just get sids deaths
SIDS<- dall[dall$UC0D == 'R99' | dall$UC0D == 'R95' | dall$UC0D == 'W75',]

ftable(SIDS$OSTATE,SIDS$DOB_YY, SIDS$UC0D)

#write all SUIDs to file (I sometimes use SUID and SID interchangably)
write.table(SIDS, file = paste("SUIDS2005_2011",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")


###################
#import every year, bind it and spit it back out

deaths = readLines("VS11LINK.DETAILUS.AllCnty.txt")
births = readLines("VS11LINK.DUSDENOM.AllCnty.txt")

deaths<-Parsedata(deaths)
births<-Parsedata(births)

write.table(head(births,100), file = paste("headcheckbirths",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")
write.table(head(deaths,100), file = paste("headcheckdeaths",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")


#testing out 20XX data
year<-rbind(deaths,births)
yearout<-"y2011"

#head check
write.table(year, file = paste(yearout,".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")
#remove(year)


######Doing some work on FIPS county, lat/long, poverty and elevation ###if i can find elevation

#check fips
table(deaths$OCNTYFIPS,deaths$OCNTYPOP)
table(births$OCNTYFIPS,births$OCNTYPOP)

grep("FIPS",names(births))
names(births)[13]

head(births$OCNTYFIPS)

head(births$OSTATE)

#read in fips data #FIPS data is external information you need to find else where that contains information about the state and county. 
#Be sure to find one including the Lat/Long of the county and elevation
#I also found some info about income
library(readr)
StateFips <- read_delim("G:/County/StateFips.txt",  "\t", escape_double = FALSE, trim_ws = TRUE)
FIPSLatLong <- read_delim("G:/County/FIPSLatLong.txt",  "\t", escape_double = FALSE, col_types = cols(COUNTYFP = col_character(),    STATEFP = col_character()), trim_ws = TRUE)

#join together #yes test is a terrible names
#head(year)
test<-merge(year,StateFips,by.x='OSTATE',by.y='StateUSPS', all.x=TRUE)
#table(test$OSTATE,test$FIPS_State,useNA='ifany')
test$FIPS <- paste(test$FIPS_State,test$OCNTYFIPS,sep="")
test2<-merge(test,FIPSLatLong,by.x='FIPS',by.y='StateCntyFP', all.x=TRUE)
#table(test2$OSTATE,test2$STNAME)

#years<-test2
SAIPESNC_23JUL18_12_55_21_98edit <- read_csv("G:/SAIPESNC_23JUL18_12_55_21_98edit.csv") #this is the poverty estimate file from gov census
head(SAIPESNC_23JUL18_12_55_21_98edit)
names(SAIPESNC_23JUL18_12_55_21_98edit)

#join this to the main data set on FIPS code
year2<-merge(test2,SAIPESNC_23JUL18_12_55_21_98edit,by.x='FIPS',by.y='CountyID', all.x=TRUE)

#get sids rate by UnderAge18inPovertyPercent, AllAgesinPovertyPercent ??
head(year2$FIPS)

#find ucod
grep("UC0D",names(year2))
names(year2)[371]

#trim space and check again
year2$UC0D<-trimws(year2$UC0D)
#check if spaces cleared
#table(year2$UC0D == 'R95')
table(year2$UC0D == 'R95' | year2$UC0D == 'R99' | year2$UC0D == 'R75')
#create SIDS
year2$SIDS<-0
year2$SIDS[year2$UC0D == 'R95' | year2$UC0D == 'R99' | year2$UC0D == 'R75']<-1
table(year2$SIDS)
#Do i include all deaths or just survivors?
#write.table(ftable(year2$FIPS, year2$UC0D == 'R95' | year2$UC0D == 'R99' | year2$UC0D == 'R75'), file = paste("FIPSSIDS2011",".txt", sep = "" ), row.names = TRUE, col.names=TRUE, sep="\t")


#############################
#run some logistic regressions on various factos, not part of the paper. These were data test many crashed my machine without using RevoScale script

names(year2)
#write out names for ease of use
#write.table(names(year2), file = paste("names2011",".txt", sep = "" ), row.names = FALSE, col.names=TRUE, sep="\t")


###Income related MedianHouseholdIncomeinDollars, AllAgesinPovertyPercent, Ages5to17inFamiliesinPovertyPercent, UnderAge18inPovertyCount
PovLogit <- glm(SIDS ~MedianHouseholdIncomeinDollars+ AllAgesinPovertyPercent+APGAR5R+FAGEREC11+MAGER+MEDUC+MRACEREC+FRACEREC+MAR+COMBGEST+DPLURAL+BWTR4, data = year2, family = "binomial")
summary(PovLogit)

###Lat,long,eval ##Elev_ft,	Elev_m, LATITUDE,	LONGITUDE #exclude Alaska
ElevLogit <- glm(SIDS ~Elev_ft+LATITUDE+LONGITUDE+APGAR5R+FAGEREC11+MAGER+MEDUC+MRACEREC+FRACEREC+MAR+COMBGEST+DPLURAL+BWTR4 , data = year2[year2$OSTATE != "AK" & year2$OSTATE != "HI" ,], family = "binomial")
summary(ElevLogit)


#####other variables to consider to include
#APGAR5R, #FAGEREC11 #MAGER #MEDUC #MRACEREC #FRACEREC #MAR #RF_DIAB? #RF_GEST? #COMBGEST #DPLURAL
#BWTR14 #BWTR4











