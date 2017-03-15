#Question A
dframe <- data.frame(
  person = c("Stan", "Francine", "Steve", "Roger", "Hayley", "Klaus"), 
  sex = factor(x = c("M", "F", "M", "M", "F", "M")),
  funny = factor(x = c("High", "Med", "Low","High","Med","Med")),
  stringsAsFactors = FALSE
)

#Question B
dframe$age <- c(41, 41, 15, 21, 60, 1600)

#Question C
dframe <- dframe[,c("person", "age", "sex", "funny")]

#Question D
mydata2 <- data.frame(
  person = c("Peter", "Lois", "Meg", "Chris", "Stewie", "Brian"),
  sex = factor(x = c("M", "F", "F", "M", "M", "M")),
  age = c(42, 40, 17, 14, 1, 7),
  funny = factor(x = c("High", "High", "Low", "Med", "High", "Med")),
  stringsAsFactors = FALSE
)

#Question E
mydataframe <- rbind(dframe, mydata2)

#Question F
mydataframe[mydataframe$sex == "F" & (mydataframe$funny == "High" | mydataframe$funny == "Med"),]

#Question G
mydataframe[substr(x = mydataframe$person, start = 1, stop = 1) == "S",]
