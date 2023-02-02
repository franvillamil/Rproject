setwd("~/Desktop/my_R_project")
library(dplyr)

data = read.csv("input_data/ucdp-prio-acd-221.csv")

conflict_years = data %>%
  group_by(side_a, gwno_a) %>%
  summarize(conflict_years = n())

write.csv(conflict_years,
  "clean_acd/output/clean_data.csv")
