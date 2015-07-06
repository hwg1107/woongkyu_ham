d = 100000

dice1 <- sample(6,d,replace = TRUE)
dice2 <- sample(6,d,replace = TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

hist(dice_roll, freq=FALSE) # get density instead of frequency

plot(ecdf(dice_roll)) # cumulative distribution function


# normal distribution
n <- rnorm(10000)
hist(rnorm(10000, mean=5, sd=10))

a=(71-70)/sqrt(5)
a
pnorm=pnorm(q=71,mean=70,sd=sqrt(5))
pnorm

hist(pnorm)

