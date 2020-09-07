context('Testing grab coefficients.")

library(palmerpenguin)
data(penguin)
fit<-lm(bill_length_mm ~., data = penguins[,-8])
coefs<-as.vector(grab_coeffs(fit))
expect_equal(round(grab_coeffs(fit)),c(15,10,6,-1,0,0,0,0,2))
