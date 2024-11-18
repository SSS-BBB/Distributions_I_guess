library(tidyverse)

# Variable
data <- diamonds$price
n <- 1
n_samples <- 10000

# Density plot of the population
plot(density(data))

# Sample from data
sample_data <- sample(data, n)

# Plot Sample data
plot(density(sample_data))

# Calculate mean of different sample data
mean_data <- c()
for (i in 1:n_samples) {
  sample_data <- sample(data, n)
  mean_data <- append(mean_data, mean(sample_data))
}

# Plot mean PDF
plot(density(mean_data))


