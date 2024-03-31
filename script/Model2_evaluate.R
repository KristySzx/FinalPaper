if(!require(lmtest)) install.packages("lmtest")
if(!require(car)) install.packages("car")
if(!require(nortest)) install.packages("nortest")

library(lmtest)
library(car)
library(nortest)

plot(model2$fitted.values, resid(model2), xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "red")

bptest(model2)

qqPlot(model2, main = "Q-Q Plot")

ad.test(resid(model2))

dwtest(model2)
