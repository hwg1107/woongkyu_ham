# 1

ye.model <- lm(mpg~qsec, data=mtcars)
mtcars$pred <- predict(ye.model, mtcars)
plot(mpg~qsec, data=mtcars)
par(new=T)
points(mtcars$qsec, mtcars$pred, col="blue", pch=16)
points(mtcars$qsec, mtcars$pred, col = "green", pch = 3)
abline(ye.model, col="hotpink")

# 2

newsls <- data.frame(qsec = seq(1, 25, 0.5))
newsls$pred <- predict(ye.model, newsls)
points(newsls$qsec, mtcars$pred, col ="green")
points(newsls$qsec, mtcars$pred, col = "green", pch = 3)


#in class code

#library("klaR")
#library("coret")
#library("class")
#library("e1071")

#bad <- 


#library('ElemStatLearn')

#sub = sample(nrow(spam), floor(nrow(spam)*0.9))
#train = spam[sub,]
#test = spam[-sub,]

#xrain = train[,-58]
#yTrain = train$spam

#xTest = test[,-58]
#yTest = text$spam

#model = train(xTrain,yTrain,)