flights <- read.csv("./data/flights.csv")
head_of_data <- head(flights)
model1 <- lm(delay ~ wind_gust, data = flights)

summary(model1)
