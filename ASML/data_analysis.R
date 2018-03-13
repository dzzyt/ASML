data<- read.csv(file="C:/Users/Daniel Zzy/Documents/ASML/ASML.csv")
data$diff_adjclose <- ave(data$Adj.Close,2,FUN = function(x) c(0,diff(x)))
data$r_diff <- data$diff_adjclose/data$Adj.Close
