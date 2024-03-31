flights <- read.csv("./data/flights.csv")
head_of_data <- head(flights)

numerical_summary <- summary(select_if(flights, is.numeric))

categorical_summary <- summary(select_if(flights, is.factor))

summaries <- list(Head = head_of_data, 
                  NumericalSummary = numerical_summary, 
                  CategoricalSummary = categorical_summary)

print(summaries)
