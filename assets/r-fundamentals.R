
library(ISwR)
age <- juul[ ,1]
igf1 <- juul[ ,4]


point_colors <- ifelse(age > 75, "red", "blue")
point_shapes <- ifelse(age > 75, 16, 15)

plot(age, igf1,
     pch = point_shapes,
     col = point_colors,
     main = "Age vs igf1 Variable",
     xlab = "Age",
     ylab = "igf1")


#problem 2
for (i in seq(1, 11, by = 2)) {
  print(i)
}

#problem 3

i <- 1
while (i <= 11) {
  print(i)
  i <- i + 2
}

#problem 4
for (i in seq(1, 11, by =2)) {
  if (i == 3) {
    print("three")
  } else {
    print(i)
  }
}