Method.of.MA.Moment <- function(x)
{
  r = acf(x,plot=F)$acf[2]
  if (abs(r) < .5)
  {
    return ( (1-sqrt(1-4*r^2))/(2*r) )
  }
  else
  {
    return (NA)
  }
}
MA1 <- arima.sim(n=120,list(ma=.9))

Method.of.MA.Moment(MA1)
acf(MA1,plot=F)$acf[2]

AR1 <- arima.sim(n=120, list(ar=.9))
ar(AR1, order.max = 1, AIC=F, method="yw")
acf(AR1)
