library(TSA)

v <- c(1,7,8,12,9,10)
diff(v, 2)

data(tempdub)
plot.ts(tempdub)
acf(tempdub, lag.max = 10)
tempdub_stationary <- diff(tempdub, 12)

plot.ts(tempdub_stationary)
acf(tempdub_stationary, lag.max = 10)

model <- auto.arima(tempdub_stationary)
model

Y_t <- c()

for (t in 1:100) {
  Y_t[t] = 50 + rnorm(n = 1, mean = 0, sd = sqrt(t))
}

plot.ts(Y_t)

acf(Y_t, lag.max = 30)

log_Y_t <- log10(Y_t)

plot.ts(log_Y_t)

acf(log_Y_t)

summary(log_Y_t[1:20])
summary(log_Y_t[21:30])
summary(log_Y_t[31:40])
summary(log_Y_t[41:50])
