x =-10:10
y = x^2

plot (x,y, xlab ="Valores x", ylab="Valores y", main ="graficas", 
      type ="b", lwd =6, xlim =c(-10, 10), ylim = c(-60,60), col ="red", lty=2)
abline(v=0, h=0)
#abline(40,10, col = "green", lwd = 5, lty =3)
curve (x^3, col ="blue",  add = TRUE, lwd =3, lty=4 )
curve (f, col ="purple",  add = TRUE, lwd =2, lty=5 )

legend("bottomright",
       col =c("red", "green", "blue", "purple"),
       legend=c(expression(x^2), expression(10*x+40), expression(x^3), expression(30*sin(2*x))),
       lty = c(2,3,4,5))


f=function(x){
  30*sin(2*x)
}