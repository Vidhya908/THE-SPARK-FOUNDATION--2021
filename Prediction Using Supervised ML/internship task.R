                    #THE Spark Foundation internship-2021!
#TASK 1:Prediction Using Supervised ML
student <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv", header = TRUE)
student
names(student)
dim(student)
summary(student)
is.null(student)
x <- student$Hours
y <- student$Scores
#visualization
plot(y ~ x, xlab = 'Study Hours',ylab = 'Score of Students', main = 'Study Hours vs Score of Students',xlim=c(1,10), ylim=c(20,100), pch=20, col='red')

#simple linear regression model
student.reg <- lm(Scores~Hours,data=student)
student.reg
abline(student.reg,col = 'blue')
print(summary(student.reg))

#predicted score for a particular time
study_hour<-data.frame(Hours=9.25)
prediction <- predict(student.reg,study_hour)
print(prediction)
          #if a student studies for 9.25hrs/day,he will Scores 92.90985
                              #Thank You!!!