png("plot_ex7.png",width = 600)
layout(matrix(c(1,2),2,1,byrow = T))
dfFin <-  read.csv2("MARINA_DATA.csv", stringsAsFactors = T)
dfFin
x <- c(dfFin$year_2005)
y <- c(dfFin$year_2017)
ABC <- cbind(x, y)
colnames(ABC) <- c("2005", "2017")
rownames(ABC) <- dfFin$FIN
pie(x, labels = rownames(x),radius = 1,col = rainbow(length(x)),legend = rownames(ABC),main = "2005 год")
pie(y, labels = rownames(y),radius = 1,col = rainbow(length(y)),main = "2017 год")
dev.off()
?pie