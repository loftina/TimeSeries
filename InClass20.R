library(urca)
library(uroot)
library(forecast)

AR1_.6 <- arima.sim(model = list(ar=.6), n = 100)

AR1_1 <- arima.sim(model = list(ar=.9999), n = 100)

summary(ur.df(AR1_.6))
summary(ur.df(AR1_1))

qnorm(p = .975, lower.tail = F)
qnorm(p=.025, lower.tail = F)

qt(p = .975, lower.tail = F, df = 2)
