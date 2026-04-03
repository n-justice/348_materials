library(tidyverse)
wide_data_0 <- read.csv("raw_data_for_reshape_example.csv")
head(wide_data_0)
dim(wide_data_0)

#get rid of group member variable
wide_data_1 <- wide_data_0[2:8]
dim(wide_data_1)

#rename for analysis
wide_data <- wide_data_1

#melt wide_data to long
long_data <- pivot_longer(wide_data,
                          cols=c(2:7))
head(long_data)
