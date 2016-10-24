#learn from :https://www.datacamp.com/community/tutorials/r-data-import-tutorial?tap_a=5644-dce66f&tap_s=10907-287229#gs.U2oxtZs

#清理环境内数据
rm(list = ls())

#搞清楚并设定工作路径
getwd()
setwd()

#导入txt,csv文件等
inputfile <- read.table("test.txt",header = FALSE)

#导入Excel表格
library(readxl)
inputfile <- read_excel("test.xlsx",header = TRUE)

#导入JSON文件
library(rjson)
inputfile <- fromJSON(file = "test.json")

#导入XML文件
library(XML)
inputfile <- xmlToDataFrame("URL")
##或者由下面多步完成
#inputfile <- xmlTreeParse("URL")
#class(inputfile)
#Result is usually similar to this: [1] "XMLDocument"
#访问顶级节点
#topxml <- xmlRoot(inputfile)
#xml转换为数据框格式
#topxml <- xmlSApply(topxml,function(x) xmlSApply(x,xmlValue))
#dfxml <- data.frame(t(topxml), row.names = NULL)
##

#导入HTML表格信息
library(XML)
inputfile <- readHTMLTable("URL",which=3)

#导入SPSS文件
library(foreign)
inputfile <- read.spss("test.sav", to.data.frame=TRUE, use.value.labels=FALSE)

#导入Systat文件
library(foreign)
inputfile <- read.systat("test")

#导入SAS文件
library(sas7bdat)
inputfile <- read.sas7bdat("test.sas7bdat")

#导入Minitab文件
library(foreign)
inputfile <- read.mtp("test.mtp")

#导入RDA/RData文件
load("test.RDA")


