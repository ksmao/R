library(ggplot2)
a <- read.table("PIE1.txt")
A1 <- a[,1]
A2 <- a[,2]
PIElabel <- paste(A1," ",A2,"%",sep="")
PIEvalue <-data.frame(Percentage = round(A2/sum(A2)*100,1),Type=PIElabel,percent=PIElabel)
#pie <- ggplot(PIEvalue,aes(x="",y=PIElabel,fill=Type))+geom_bar(width=15)
plot <- ggplot(a,
        aes(x="",y=PIElabel,fill="Type"))
plot = plot + geom_bar(width=15)
plot = plot + coord_polar("y")
