cpu <- c(55,56,98,100,15,12,33,45,32,67,82,19,25)

summary(cpu)
cpu_usage <- 100 -cpu
#png("BUSY.png")
plot(cpu_usage, type="b", main="CPU busy time over time steps", xlab="Time step", ylab="% busy")



x <- c(rep(1:13))

y <- lm(cpu_usage ~ x)

abline(y)

#dev.off()
