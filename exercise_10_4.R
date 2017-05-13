#Question A
mynumbers <- c(4, 5, 1, 2, 6, 2, 4, 6, 6, 2)

#i
mynumbers <- c(2,2,2,2,5,2)

#ii
mynumbers <- 2:20

#iii
mynumbers <- c(10,1,10,1,2)

mylist <- list()
counter <- 1
mycondition <- mynumbers[counter] <= 5

while (mycondition) {
  mylist[[counter]] <- diag(mynumbers[counter])
  counter <- counter+1
  if(counter<=length(mynumbers)){
    mycondition <- mynumbers[counter] <= 5
  } else {
    mycondition <- FALSE
  }
}

#Question B
#i
mynum <- 5

#ii
mynum <- 12

#iii
mynum <- 0

my_factorial <- 1

for (num in mynum:1) {
  if (num == 0) {
    my_factorial <- 1
  } else {
    my_factorial <- my_factorial * num
  }
}

