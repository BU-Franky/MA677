myname <- "Yifan Zhang"

set.seed(0207)
Space <- c("a", "a", "a", "b", "b", "c")
simulation <- sample(Space, 1000, replace = TRUE)
table(simulation)

width <- c(1/2, 1/3, 1/6)
height <- table(simulation)/width
barplot(height = height, width = width)






