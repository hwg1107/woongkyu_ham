# 1.
# a. Estimate the sample mean score. What does the quantity estimate?
score <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
smean <- mean(score)
smean

# b. Is the estimate in part(a) likely to equal the population parameter? Why or why not?
# No, it is just a sample of the population and also the sample is not enough.
# It is close to the population but we cannot say it is equal to it.

#c. Calculate the standard error for your sample estimate. 

SE <- sd(score)/sqrt(length(score))
SE

# d. What does the quantity in part(c) measure?
# = 1.976529

# e. Calculate a 95% confidence interval for the population mean.

# solution 1.
left <- smean - 2*SE
right <- smean + 2*SE
list("lower bound"=left,"upper bound"=right)

# solution 2.
u <- list("lower bound"=smean - 2*SE, "upper bound"=smean + 2*SE)
u

# solution 3.
t.test(score)


# f. Provide an interpretation for the interval you calculated in part (e).
# 95% of the random sample from the population, the interval includes the true population mean.


# 2.(5 pts) Using the following data, test the null hypothesis that male and females have the same mean cholesterol concentrations.
# Include descriptive statistics, hypothesis testing (e.g., t-test) and 95% confidence intervals.

# Male:   220.1, 218.6, 229.6, 228.8,222.0,224.1, 226.5
# Female:   223.4,221.5,230.2,224.3,223.8,230.8

m = c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
f = c(223.4,221.5,230.2,224.3,223.8,230.8)

layout(matrix(2:1, ncol = 1))
hist(m)
hist(f)

mean(m)
mean(f)
sd(m)
sd(f)

# Different way to conduct t-test 1.
t.test(m,f)

# Different way to conduct t-test 2.
ttest=t.test(m,f,alternative="two.sided",var.equal=TRUE)
ttest

# This t-test shows the 95% confidence intervals covers -6.4 to 3.5.
# It contains zero so we can't reject the null hypothesis.


# 3. (5 pts) A clinical trail was carried out to test whether a new treatment has an effect on the rate ofrecovery  of patients. 
# The null hypothesis "H0:   the treatment has no effect" was rejected with a P-value of 0.04.
# The researchers used a significance level of 5%. State whether the following conclusions is correct. If not, explain why.

# a. The treatment has only a small effect. 
# False. 
# The p-value says nothing about the size of the effect.
# It only says whether it can reject the null hypothesis or not.

# b. The treatment has some effect.
# True. It does not say anything about how effective it is but still it has some effect.

# c. The probability of committing a Type I error is 0.04.
# False. Type I error is equal to the alpha (significant) so it is 0.05 not 0.04.

# d. The probability of committing a Type II error is 0.04. 
# False. It is not enough to tell Type II error is 0.04.

# e. The null hypothesis would not have been rejected if the significance level was ??=0.01. 
# True. In that case, alpha is less than 0.05 so it will not be rejected.

# 4. (5 pts) The data below are volumes of red blood cells from two individuals.
# Test the hypothesis (using the Mann-Whitney test) that the red blood cells of person B are 1.5 times the volume of person A. 
# person A:   248, 236, 269, 254, 249, 251, 260, 245, 239, 255 
# person B:   380, 391, 377, 392, 398, 374 

# solution 1.
pA=c(248,236,269,254,249,251,260,245,239,255)
pB=c(380,391,377,392,398,374)
pA2 <- 1.5 * pA

layout(matrix(2:1, ncol = 1))
hist(pA2, xlim=c(350,410))
hist(pB, xlim=c(350,410))

#H0 = pA cells have volume 1.5*pB
#Ha = pA cells don't have volume 1.5*pB

t.test(pA2,pB)

# solution 2.
pA=c(248,236,269,254,249,251,260,245,239,255)
pB=c(380,391,377,392,398,374)
wilcox.test(1.5*pA,pB)

# p-value is greater than 0.05 so I cannot reject the null hypothesis.


# 5. (5 pts) What is the difference between the standard error of mean and the standard deviation?
# Provide example data that illustrates their difference

# Answer: 
# Standard deviation is a measure of dispersion within your data set,
# while standard error is a measure of the accuracy with which a sample represents a population. 
# That is, standard error is the level of error (dispersion) of your data from a population mean.
# Also one of the biggest differences is 
# when 'n' is getting bigger, standard deviation is going to be closer to the true number of population.
# while standard error is becoming zero. Vice versa.