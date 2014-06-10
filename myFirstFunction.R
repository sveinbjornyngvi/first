add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

columnsd <- function(x, removeNA = TRUE) {
        nc <- ncol(x)
        sds <- numeric(nc)
        for(i in 1:nc) {
                sds[i] <- sd(x[, i], na.rm = removeNA)
        }
        sds
}

data <- read.csv("hw1_data.csv")
columnmean(data)
