#处理数据dataframe

#录入list
data_value <- c(1,2,3,4)
data_Name <- I(c("赵","钱","孙","李")) #避免被转化为vector
data_Birth <- as.Date(c("1990-10-1","1989-6-4","1987-4-10","1986-9-9")) #保持日期格式
#list合并为data frame
Info <- data.frame(data_Name,data_Birth,data_value)
#快速头尾查看内容
head(Info)
tail(Info)

#查看行列数
dim(Info)
#查看行数
dim(Info)[1] #或 nrow(Info)
#查看列数
dim(Info)[2] #或 ncol(Info) 或 length(Info)

#查看列名称
colnames(Info) #或 names(Info) 例如names(Info) <-c(colnames(Info)[1],"",colnames(Info)[3])
#查看行名称
rownames(Info)

#访问dataframe中数据
#指定某一列
Info$data_Name #或Info[,1] （先行后列）例如 Info[,2] <- Info[,2]-20
#指定某一列某一行
Info$data_Birth[3] #或Info[2,3]





