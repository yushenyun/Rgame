ComputeWeight <- function(par){
  weight<-par[1]
  height<-par[2]
  BMI<-weight/(height^2)
  return(BMI)
}
cat("請輸入您的體重 (公斤)/身高 (公尺)")
x<-scan()
BMI<-ComputeWeight(x)
cat("您的 BMI 值為:", BMI)