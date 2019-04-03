library(forecast)
library(quantmod)
library(TSA)

AR <- arima.sim(n=100, model=list(ar=c(.3, .5)))

Model1 <- auto.arima(AR)
Model1

plot(forecast(Model1))

data("tempdub")

plot.ts(tempdub)
acf(tempdub)
pacf(tempdub)

tempModel <- auto.arima(tempdub)
tempModel
plot(forecast(tempModel))

getSymbols("AAPL")
head(AAPL)
par(mfrow=c(2,1))
acf(AAPL$AAPL.Close, lag.max = 1000)
pacf(AAPL$AAPL.Close, lag.max = 1000)

AAPL.Closing <- AAPL$AAPL.Close

length(AAPL.Closing)*.75

AAPL.Train <- AAPL.Closing[1:2227]

AAPLModel <- auto.arima(AAPL.Train)
AAPLModel
?auto.arima
