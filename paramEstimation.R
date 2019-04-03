library(forecast)

.4/(1-.2)

1/(1-(.2)^2)

chinoise <- rt(100, 3)

acf(chinoise)

AR.8 <- arima.sim(n=50, model=list(ar=.8))

ar(AR.8, order.max = 1, AIC=F, method="yw")$ar
ccsqacf(AR.8, plot=F)
?acf

?Box.test

qchisq(p = .025, df = 22, lower.tail = F)
qchisq(p = .975, df = 22, lower.tail = F)


AR.9 <- arima.sim(n=100, model=list(ar=.9))
ar(AR.9, order.max = 1, AIC = F, method = "yw")$ar - .9
ar(AR.9, order.max = 1, AIC = F, method = "ols")$ar - .9
ar(AR.9, order.max = 1, AIC = F, method = "mle")$ar - .9

weights <- c(115, 122, 130, 127, 149, 160, 152, 138, 149, 180)

mean(weights)
sd(weights)

MLE <- function(x)
{
  return (exp(-(x-142.2)^2/(2*19.66271))/(sqrt(2*pi*19.66271)))
}

temp = 1;
tempvec <- c();
for (i in 1:length(weights))
{
  tempvec[i] = MLE(weights[i])
  temp = temp * MLE(weights[i])
}

temp
tempvec
