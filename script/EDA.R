if (!require("dplyr")) install.packages("dplyr")
if (!require("knitr")) install.packages("knitr")
library(dplyr)
library(knitr)
library(ggplot2)
library(reshape2)
### data loader
flights <- read.csv("./data/flights.csv")
head_of_data <- head(flights)

numerical_summary <- summary(select_if(flights, is.numeric))

categorical_summary <- summary(select_if(flights, is.factor))

summaries <- list(Head = head_of_data, 
                  NumericalSummary = numerical_summary, 
                  CategoricalSummary = categorical_summary)

print(summaries)



head_data <- head(flights)

numerical_summary <- flights %>% 
  select_if(is.numeric) %>% 
  summary() %>% 
  as.data.frame()

categorical_summary <- flights %>% 
  select_if(is.factor) %>% 
  sapply(table) %>% 
  as.data.frame()

combined_table <- data.frame(Variable = character(), 
                             Head = character(), 
                             Summary = character(), 
                             stringsAsFactors = FALSE)

for (var in names(numerical_summary)) {
  combined_table <- combined_table %>% 
    add_row(Variable = var,
            Head = toString(head_data[[var]]),
            Summary = toString(numerical_summary[[var]]))
}

for (var in names(categorical_summary)) {
  combined_table <- combined_table %>% 
    add_row(Variable = var,
            Head = toString(head_data[[var]]),
            Summary = toString(categorical_summary[[var]]))
}

kable(combined_table, caption = "Integrated Data Summary Table")

### data visualization
hist(flights$delay, main = "Histogram of Delays", xlab = "Delay (min)", col = "blue")
boxplot(flights$delay, main = "Boxplot of Delays", ylab = "Delay (min)")

barplot(table(flights$terminal), main = "Bar Plot of Terminal", xlab = "Terminal", ylab = "Frequency")
barplot(table(flights$airline), main = "Bar Plot of Airlines", xlab = "Airline", ylab = "Frequency")

plot(flights$temperature, flights$delay, main = "Scatter Plot of Delay vs Temperature",
     xlab = "Temperature (Celsius)", ylab = "Delay (min)", pch = 19, col = "blue")
plot(flights$wind_gust, flights$delay, main = "Scatter Plot of Delay vs Wind Gust",
     xlab = "Wind Gust (knots)", ylab = "Delay (min)", pch = 19, col = "blue")

boxplot(delay ~ terminal, data = flights, main = "Delay by Terminal", 
        xlab = "Terminal", ylab = "Delay (min)", col = "blue")
boxplot(delay ~ airline, data = flights, main = "Delay by Airline",
        xlab = "Airline", ylab = "Delay (min)", col = "blue")

melted_cor_matrix <- melt(cor_matrix)
ggplot(melted_cor_matrix, aes(Var1, Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(midpoint = 0, low = "blue", high = "red", mid = "white") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(fill = "Correlation")
