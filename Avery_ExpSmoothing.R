time <- 1:12
y<-c(71,70,69,68,64,65,72,78,75,75,75,70)
alpha1<-c(.3,.6,.8)
Exponential<-function(alpha1,y)
{
  Res<-matrix(0,nrow=length(alpha1),ncol = 3)
  colnames(Res)<-c("Alpha","SSE","MSE")
  s<-c()
  s[1]<-y[1]
  s[2]<-y[1]
  for(j in 1:length(alpha1))
  {
    for(i in 2:length(y))
    {
      s[i+1]<-alpha1[j]*y[i]+(1-alpha1[j])*s[i-1]
    }
    var<-(y[2:length(y)]-s[2:length(y)])^2
    SSE<-sum(var)
    MSE<-SSE/(length(y)-1)
    Res[j,1]<-alpha1[j]
    Res[j,2]<-SSE
    Res[j,3]<-MSE
  }
  print(s)
  return(Res)
}

Exponential(alpha,y)

St = function(alpha, y)
{
  St <- c()
  St[1] <- NA
  St[2] <- y[1]
  for (t in 3:length(y))
  {
    St[t] <- alpha*y[t-1]+(1-alpha)*y[1]
  }
  return (St)
}

S.3 <- St(.3, y)
S.6 <- St(.6, y)
S.8 <- St(.8, y)
plot.ts(x = time, y = y)
lines(S.3, col = "yellow")
lines(S.6, col = "orange")
lines(S.8, col = "red")
legend("topleft", c("Actual", "S alpha .3", "S alpha .6", "S alpha .8"), 
       col=c("black", "yellow", "orange", "red"), 
       lty=c(1,1,1,1))