library(forecast)
AR.5 <- arima.sim(n=100, model=list(ar=.5))
ar(AR.5, order.max = 1, AIC = F, method = "yw")$ar - .5
ar(AR.5, order.max = 1, AIC = F, method = "ols")$ar - .5
ar(AR.5, order.max = 1, AIC = F, method = "mle")$ar - .5

AR.6 <- arima.sim(n=100, model=list(ar=.6))
ar(AR.6, order.max = 1, AIC = F, method = "yw")$ar - .6
ar(AR.6, order.max = 1, AIC = F, method = "ols")$ar - .6
ar(AR.6, order.max = 1, AIC = F, method = "mle")$ar - .6

AR.9 <- arima.sim(n=100, model=list(ar=.9))
ar(AR.9, order.max = 1, AIC = F, method = "yw")$ar - .9
ar(AR.9, order.max = 1, AIC = F, method = "ols")$ar - .9
ar(AR.9, order.max = 1, AIC = F, method = "mle")$ar - .9

?ar
