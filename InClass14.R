library(TSA)
library(forecast)

data("tempdub")

tempdub_training <- tempdub[1:100]
length(tempdub)
model1 <- auto.arima(tempdub_training)
model1
plot(forecast(model1, 44), col="red", type="l")
plot(tempdub)
tempdub_testing <- tempdub[101:144]
prediction <- forecast(model1, 44)
prediction

testandpredict <- data.frame(Test=tempdub_testing, Predict=prediction$mean)

mse <- c()

for (i in 1:44){
  mse[i] <- (tempdub_testing[i]-prediction$mean[i])^2
}

MSE <- sum(mse)/44
MSE

ts.plot(testandpredict, col=rainbow(2))

test <- ts(testandpredict$Test, freq=1, start = c(101,1))

plot.ts(testandpredict$Predict, col="red")
points(test, col="green", type = "l")

MSE2 <- mean((tempdub_testing-testandpredict$Predict)^2)
MSE2
\