# Finding Eigen Values, Eigen Matrix and determinant of (Matrix C) = (Matrix A) x (Matrix B)  
A = (                                 # Matrix A
  matrix(                             # Creating matrix 
    as.integer(                       # Output type to Integer(for easier calculation)
      runif(                          # Random number generating function : runif()
        9,min = 0, max=10             # 9 numbers from 0 to 10
           )
              )
         
  , nrow = 3 
  , ncol = 3
        )
    )
#set seed to 
set.seed(123)

B = (                                 # Matrix A
  matrix(                             # Creating matrix
    as.integer(                       # Output type to Integer(for easier calculation)
      runif(                          # Random number generating function : runif()
        9,min = 0, max=10             # 9 numbers from 0 to 10
           )
              )
    
    ,nrow = 3 
    , ncol = 3
        )
    )

C <- A * B                             #Element Product of Matrix A and Matrix B
AB_DotProduct <- sum(AB_ElementProduct)#Dot Product of Matrix A and Matrix B
cat(matrix_ElementProduct <- paste("Element Product of Matrix A and Matrix B"," ",
                               "                                         a1 x b1     a1 x b2     a1 x b3",
                               "                                         a2 x b1     a2 x b2     a2 x b3",
                               "                                         a3 x b1     a3 x b2     a3 x b3", sep="\n"))
print(AB_ElementProduct)
print(paste("Dot Product of Matrix A and Matrix B =",AB_DotProduct))
print("Eigen Matrix of  ")
                                       #Calculating Eigen Matrix & Values  of A*B

AB_EigenMatrix <- eigen(AB_ElementProduct)
print("Eigen Matrix of A x B")
print(AB_EigenMatrix)
print("Eigen Values of A x B")
cat(paste("λ1 :",AB_EigenMatrix$values[1]),"\t",paste("λ2 :",AB_EigenMatrix$values[2]),"\t",paste("λ3 : ",AB_EigenMatrix$values[3]))

