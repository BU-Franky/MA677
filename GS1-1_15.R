myname <- "Yifan Zhang"

num.games <- 82
num.players <- 10^3
num.shots <- 20

set.seed(2022)
h5 <- data.frame()
for (i in 1:num.players) {
  for (j in 1:num.games) {
    x <- sample(0:1, num.shots, replace = TRUE)
    xr = rle(x)
    h5[j, i] = sum((xr$len >=5) & (xr$val==1))
  }
}
h5[h5 > 0 ] <- 1
h5 <- apply(h5, 2, mean)
prop5_82_mean <- mean(h5)
prop5_82_sd <- sd(h5)

num.games <- 10
set.seed(2022)
h5 <- data.frame()
for (i in 1:num.players) {
  for (j in 1:num.games) {
    x <- sample(0:1, num.shots, replace = TRUE)
    xr = rle(x)
    h5[j, i] = sum((xr$len >=5) & (xr$val==1))
  }
}
h5[h5 > 0] <- 1
h5 <- apply(h5, 2, mean)
prop5_10_mean <- mean(h5)
prop5_10_sd <- sd(h5)
