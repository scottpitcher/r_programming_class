#Setting up the matrices
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#Inverse
inv_A <- solve(A)
inv_A

solve(B)
cat("As stated in the assignment details, B will not be invertible as it is not a square matrix like A")
#Determinant
det_A <- det(A)
det_A

det_B <- det(B)
det_B


#Part 2
set.seed(123)
c<- sample(c(1:20),10, replace = T)

Ac<- A*c
Ac
Bc <- B*c
Bc

Ac%*%Bc
