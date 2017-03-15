#Create a data frame
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"), age=c(42,40,17,14,1), 
                     sex=factor(c("M","F","F","M","M")), stringsAsFactors = FALSE)

#Subset a data frame numerically
mydata[2,2]
mydata[3:5,3]
mydata[,c(3,1)]
mydata$age
mydata$age[2]

#Get data frame dimensions
nrow(mydata)
ncol(mydata)
dim(mydata)

#Append a record to a data frame
newrecord <- data.frame(person="Brian", age=7, sex=factor("M", levels=levels(mydata$sex)))
mydata <- rbind(mydata, newrecord)

#Append a variable to a data frame
funny <- c("High", "High", "Low", "Med", "High", "Med")
funny <- factor(x = funny, levels = c("Low", "Med", "High"))
mydata <- cbind(mydata, funny)
mydata$age.mon <- mydata$age * 12

#Logically subset a data frame
mydata$sex == "M"
mydata[mydata$sex == "M",]
mydata[mydata$sex == "M", -3]
mydata[mydata$sex == "M", c("person", "age", "funny", "age.mon")]
mydata[mydata$age>10|mydata$funny=="High",]
mydata[mydata$age>45,] # Returns nothing!
