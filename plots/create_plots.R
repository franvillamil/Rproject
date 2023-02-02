setwd("~/Desktop/my_R_project")
library(ggplot2)

data = read.csv("clean_acd/output/clean_data.csv")

pdf("plots/output/prueba.pdf")
ggplot(data, aes(x = conflict_years)) +
  geom_histogram() + theme_bw()
dev.off()
