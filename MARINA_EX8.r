Function.FUN <- function(n,a,b,c,d) #Аргументы ф-ии - параметры распределений
{
  set.seed(14)
  x <- rf(300,df1 = a,df2 = b)
  e <- rnorm(300,mean = c,sd = d)
  y <- 5 + 3 * x + e
  median.x <- median(x)
  median.y <- median(y)
  layout(matrix(c(1,2,2,1,2,2,4,3,3),nrow = 3,byrow = T))
  boxplot(y,pch = 20,cex = 1,col = "purple")
  plot(x,y,abline(v = median.x,h = median.y,lty = 1),pch = 20,cex = 2,col = "purple")
  boxplot(x,pch = 20,cex = 1,horizontal = T,col = "purple")
  
}
Function.FUN(300,3,50,0,4) #Вывод ф-ии