#Question A
mynum <- 3
mynum <- 0

if (mynum == 1) {
  foo <- 12
} else if (mynum == 2) {
  foo <- 34
} else if (mynum == 3) {
  foo <- 56
} else if (mynum == 4) {
  foo <- 78
} else {
  foo <- NA
}

#Question B
lowdose <- 5
meddose <- 20
highdose <- 50

doselevel <- factor(x=c("low", "high", "med"))

if(any(doselevel == "high")) {
  
  if(lowdose >= 10) {
    lowdose <- 10
  } else {
    lowdose <- lowdose / 2
  }
  
  if (meddose >= 26) {
    meddose <- 26
  } 
  
  if (highdose < 60) {
    highdose <- 60
  }  else {
    highdose <- highdose * 1.5
  }
  
  dosage <- rep(lowdose, times=length(doselevel))
  dosage[doselevel == "med"]
  
  
  }

