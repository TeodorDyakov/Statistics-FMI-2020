#create vector of numbers
vec<-c(8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1)

#create matrix with 5 rows and 2 columns from the values in vec
mat = matrix(vec, nrow = 5, ncol = 2)

#set the names of rows in mat
row.names(mat)<-c("r1", "r2", "r3", "r4", "r5")

#add a column to the matrix
mat<-cbind(mat, c(1,3,5,7,9))

#print the matrix sorted by first column
mat[order(mat[,1],decreasing=FALSE),]

