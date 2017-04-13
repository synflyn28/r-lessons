#Question A
vec1 <- c(2, 1, 1, 3, 2, 1, 0)
vec2 <- c(3, 8, 2, 2, 0, 0, 0)

#i
if((vec1 + vec2) == 10) {
  cat("Print me!")
}

#ii
if(vec1[1] >= 2 && vec2[1] >= 2) {
  cat("Print me!")
}

#iii
if(all((vec2-vec1)[c(2, 6)]<7)) {
  cat("Print me!")
}

#iv
if(!is.na(vec2[3])){
  cat("Print me!")
}

#Question B
ifelse(test = vec1 + vec2 > 3, yes = vec1 * vec2, no = vec1 + vec2)

#Question C
mymat <- matrix(c("Foo", "Bar", "Grand", "Good"), nrow = 2, ncol = 2)
mymat <- matrix(as.character(1:16), 4, 4)
mymat <- matrix(
  c("DANDELION", "Hyacinthus", "Gerbera", 
    "MARIGOLD", "geranium", "liguarlia", 
    "Pachysandra", "SNAPDRAGON", "GLADIOLUS"),
  3, 3
)
mymat <- matrix(c("GREAT", "exercises", "right", "here"), 2, 2, byrow = T)

if(any(substr(x=diag(mymat), 1, 1) == "G") || any(substr(x=diag(mymat), 1, 1) == "g")) {
    indexes <- which(substr(diag(mymat), 1, 1) == "G" | substr(diag(mymat), 1, 1) == "g")
    diag(mymat)[indexes] <- "HERE"
} else {
  mymat <- diag(nrow(mymat))
}
