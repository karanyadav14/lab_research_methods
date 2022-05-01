# Research Methods labs

library(dplyr)
library(lme4)
library(ggplot2)


data <- read.csv("hindi_JEMR_new.csv")
head(data)
str(data)
  summary(data)

data$subj <- as.factor(data$subj)
data$item <- as.factor(data$item)



m <- lmer(TFT ~ syll_len+word_len+word_complex+IC+SC+Word_Similarity
          +(1|subj),
          data = data,
         )


summary(m)




