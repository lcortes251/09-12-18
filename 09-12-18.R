#From Class Exercise 1, EX2

#Copy lines 72 to 77, and 80 to 89

library(affy)

setwd("/Users/Laura/Desktop/estrogen")

targetsFile <- "estrogen.txt"

pd <- read.AnnotatedDataFrame(targetsFile,header=TRUE,sep="",row.names=1)

pData(pd)

targetsFile <- "estrogen.txt"

pd <- read.AnnotatedDataFrame(targetsFile,header=TRUE,sep="",row.names=1)

pData(pd)

ER <- pData(pd)$estrogen

Time <- factor(pData(pd)$time.h)

design <- model.matrix(~ER+Time)

design

design2 <- model.matrix(~ER*Time)

design
raw <-ReadAffy(celfile.path = "C:/Users/Bio-user/Documents/GitHub/Class-Exercise-1/estrogen", filenames=rownames(pData(pd)),phenoData = pd)

raw




