library(ggplot2)

folder_inputData <- "D:/Programming/R/DataSource/"
filename_inputData <- "PIE1.txt"
path_inputData <- paste(folder_inputData, filename_inputData, sep = "")
inputData <- read.table(path_inputData)
#colnames(inputData) <- c("nameList", "valueList")

nameList <- inputData[,1]
valueList <- inputData[,2]
chartData <- data.frame(nameList, valueList)

chartData$nameList <- factor(nameList, levels = chartData[order(-chartData[,2]),][,1])
labelList <- paste(nameList," ",valueList,"%",sep = "")

labelPos <- cumsum(valueList) - valueList/2

pieChart <- ggplot(chartData, aes(x=factor(1), y= valueList , fill = nameList)) +
            geom_bar(width = 1, stat = "identity") +
            geom_text(aes(x=factor(1.7),y=labelPos,label = labelList)) +
            coord_polar(theta = "y")
pieChart
