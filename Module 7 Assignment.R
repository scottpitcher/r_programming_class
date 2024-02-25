#S3 Example
s3<- list(name='Scott', age = 21, hair = 'brown',eyes = 'brown')

class(s3) <- "Myself"

#S4 Example
setClass("Myself", slots = c(name='character', age = 'numeric', hair = 'character',eyes = 'character'))
s4 <- new("Myself",name='Scott', age = 21, hair = 'brown',eyes = 'brown')
isS4(s4)
