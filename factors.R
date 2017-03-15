#Identifying Categories
firstname <- c(
  "Liz", "Jolene",
  "Susan", "Boris", 
  "Rochelle", "Tim", 
  "Simon", "Amy"
)
sex.num <- c(0,0,0,1,0,1,1,0)
sex.char <- c("female","female","female","male","female","male","male","female")
sex.num.fac <- factor(x=sex.num)
sex.char.fac <- factor(x=sex.char)
levels(x=sex.num.fac)
levels(x=sex.char.fac)
levels(x=sex.num.fac) <- c("1", "2") #Levels in factors are *always* strings
sex.char.fac[2:5]
sex.char.fac[c(1:3, 5, 8)]
sex.num.fac == "2"
firstname[sex.char.fac=="male"]

#Defining and Ordering Levels
mob <- c("Apr", "Jan", "Dec", "Sep", "Nov", "Jul", "Jul", "Jun")
mob[2]
mob[3]
mob[2] < mob[3]
ms <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
mob.fac <- factor(x=mob, levels=ms, ordered=TRUE)
mob.fac[2] < mob.fac[3]

#Combining and cutting factored vectors
new_values <- factor(x=c("Oct", "Feb", "Feb"), levels=levels(mob.fac), ordered=TRUE)
c(mob.fac, new_values)
levels(mob.fac)
mob.new <- levels(mob.fac)[c(mob.fac, new_values)]
Y <- c(0.53, 5.4, 1.5, 3.33, 0.5, 0.01, 2, 4.2, 1.99)
br <- c(0, 2, 4, 6)
cut(x=Y, breaks=br)
cut(x=Y, breaks=br, right=FALSE)
cut(x=Y, breaks=br, right=FALSE, include.lowest=TRUE)
lab <- c("Small", "Medium", "Large")
cut(x=Y, breaks=br, right=F, include.lowest=T, labels=lab)
