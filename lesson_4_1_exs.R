#Lesson 4.1 Exercises

#Question A
foo <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
foo[foo > 6]
foo[foo>=6]
foo[foo<(6+2)]
foo[foo!=6]

#Question B
new_array <- array(foo[-1:-3], dim=c(2, 2, 3))
new_array[new_array==(6/2)+4]
new_array[(new_array+2)<=(6/2)+4]

#Question C
id_mat <- diag(x=10)
zero_true <- id_mat == 0

#Question D
any(new_array==(6/2)+4)
all(new_array==(6/2)+4)
any((new_array+2)<=(6/2)+4)
all((new_array+2)<=(6/2)+4)

#Question E
any(diag(x=zero_true))
