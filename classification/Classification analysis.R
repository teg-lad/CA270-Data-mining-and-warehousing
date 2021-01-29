#!/usr/bin/Rscript

library(ggplot2)

g1 <- ggplot(student, aes(x=factor(Class)))+
     geom_bar(stat="count", width=0.7, aes(fill=gender))+
     theme_minimal() + labs(title="Male Vs. Female Grades", x = "Student Grade",
      y = "No. of Students", fill = "Gender") + theme(text = element_text(size=20))

print(g1)

g2 <- ggplot(student, aes(x=factor(Class)))+
  geom_bar(stat="count", width=0.7, aes(fill=race))+
  theme_minimal() + labs(title="Comparing Race Groups", x = "Student Grade",
  y = "No. of Students", fill = "Race Groups") + theme(text = element_text(size=20))

print(g2)

g3 <- ggplot(student, aes(x=factor(Class)))+
  geom_bar(stat="count", width=0.7, aes(fill=prep))+
  theme_minimal() + labs(title="Test Prep Vs. No Prep", x = "Student Grade",
                         y = "No. of Students", fill = "Test Prep") + theme(text = element_text(size=20))
print(g3)

g4 <- ggplot(student, aes(x=factor(Class)))+
  geom_bar(stat="count", width=0.7, aes(fill=parent_edu))+
  theme_minimal() + labs(title="Comparing Parent Education Levels", x = "Student Grade",
                         y = "No. of Students", fill = "Parent Education") + theme(text = element_text(size=20))

print(g4)

pdf(file="classification.pdf", width=20, height=10)
par(mfrow=c(2, 2))

print(g1)
print(g2)
print(g3)
print(g4)
print(summary(student))

dev.off()

