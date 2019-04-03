library(TSA)

MA1 <- arima.sim(model = list(ma=.5), n = 100)
plot.ts(MA1)

model <- auto.arima(y = MA1)

plot(forecast(model, 10))
