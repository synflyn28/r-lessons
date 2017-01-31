#Question A
foo <- c(7,1,7,10,5,9,10,3,10,8)
foo[foo>5|foo==2]

#Question B
bar <- c(8,8,4,4,5,1,5,6,6,8)
bar[bar<=6&bar!=4]

#Question C**
c(foo[foo>5|foo==2], bar[bar<=6&bar!=4])

#Question D
baz <- foo+bar
baz[baz>=14&baz!=15]
baz[(baz/2)>4|(baz/2)<=2]
