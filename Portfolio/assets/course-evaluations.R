#Loading in the dataset
evals <- read.csv("C:/Users/majke/OneDrive/Skrivebord/DSS 665/evals.csv")

#problem 1
summary(evals$age)
sd(evals$age)
var(evals$age)

hist(evals$age,
     main = "Distribution of Professor's Ages",
     xlab = "Age in Years",
     ylab = "Frequency",
     col = "seagreen",
     breaks = seq(25, 75, by =5))

#problem 2
plot(evals$score, evals$age,
     main = "Course Evaluation Scores and Professor Age",
     xlab = "Course Evaluation Score",
     ylab = "Professor's Ages in Years",
     xlim = c(1 ,5),
     ylim = c(20, 80),
     pch = 19,
     col = "seagreen")

cor(evals$score, evals$age)

#problem 3
boxplot(score ~ language, data = evals,
        main = "Course Evaluation Scores by Native Language",
        xlab = "Professor's Native Language",
        ylab = "Course Evaluation Score",
        names = c("English", "Non-English"),
        col = c("seagreen", "purple"))


par(mfrow = c(1, 2))

hist(evals$score[evals$language== "english"],
     main = "Native English Speakers",
     xlab = "Course Evaluation Score",
     ylab = "Frequency",
     col = "seagreen",
     breaks = seq(1, 5, by = 0.5),
     xlim = c(1, 5),
     ylim = c(0, 180))

hist(evals$score[evals$language== "non-english"],
     main = "Non-English Speakers",
     xlab = "Course Evaluation Score",
     ylab = "Frequency",
     col = "purple",
     breaks = seq(1, 5, by = 0.5),
     xlim = c(1, 5),
     ylim = c(0, 180))


par(mfrow = c(1, 1))

#average evaluation score by language
tapply(evals$score, evals$language, mean)

#testing for a difference in average scores
t.test(score ~ language, data =evals)

#problem 4
gender_table <- table(evals$gender, dnn = "Number of Professors by Gender")
gender_table

barplot(gender_table,
        main = "Distribution of Professorss Gender",
        xlab = "Professors' Gender",
        ylab = "Frequency",
        col = c("pink", "lightblue"))

#problem 5
rank_level_table <- table(evals$rank, evals$cls_level)
rank_level_table

barplot(rank_level_table,
        beside = TRUE,
        main = "Professor Rank by Course Level",
        xlab = "Course Level",
        ylab = "Frequency",
        col = c("seagreen", "purple", "lightblue"),
        legend.text = rownames(rank_level_table),
        args.legend = list(x = "top", bty = "n"))