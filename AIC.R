library(TSA)

Y_t <- c()

for (i in 1:100)
{
  Y_t[i] <- 5+3*i+rnorm(n = 1)
}

plot.ts(Y_t)
acf(Y_t)

Y_tDiff1 <- diff(Y_t)
plot.ts(Y_tDiff1)
acf(Y_tDiff1)

Y_tDiff2 <- diff(Y_tDiff1)
plot.ts(Y_tDiff2)
acf(Y_tDiff2)

Y_tDiff3 <- diff(Y_tDiff2)
plot.ts(Y_tDiff3)
acf(Y_tDiff3)

par(mfrow=c(3,2))

Y_tDiff10 <- diff(Y_t,10)
plot.ts(Y_tDiff10)
acf(Y_tDiff10)

data("color")
acf(color)
pacf(color)
model1 <- arima(x = color, order = c(1,0,0))
model1$aic

model2 <- arima(x = color, order = c(2,0,0))
model2$aic

model3 <- arima(x = color, order = c(1,0,1))
model3$aic
