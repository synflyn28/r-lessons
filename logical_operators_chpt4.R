#Examples of Basic Logical Comparisons in R
FALSE || ((T&&TRUE) || FALSE)
!TRUE&&TRUE
(T&&(TRUE||F)) && FALSE
(6<4) || (3 != 1)

#Examples of elementwise comparisons
foo <- c(T,F,F,F,T,F,T,T,T,F,T,F)
bar <- c(F,T,F,T,F,F,F,F,T,T,T,T)
foo&bar
foo|bar