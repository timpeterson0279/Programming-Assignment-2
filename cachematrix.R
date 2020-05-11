## This is Tim Peterson programing assignment 2.  
##  This code caches a matrix
##
##
makeCacheMatrix <- function(x = matrix()) 
        {
        ## Cache matrix x in a global matrix
        Num_cols <- ncol(x)
        Num_rows <- nrow(x)
        ##
        ##  Check to make sure this is a square matrix
        ##
        ##
        if (Num_cols != Num_rows) 
                {
                print("Hey knuckle head, this not a square matrix!") 
                }
                else
                {
                print("this is a square matrix")
                print(Num_cols)
                print(Num_rows)
                # 
                # now create the I matrix of the right size
                #
                Cache_matrix<<x
                }          
                ##
                ##  Disregard this code - rather than using the solve function
                ##  I was trying to calculate the inversion.  This is close
                ##  but needs more work.              ## Now go row b
                ##
                ## row_counter <-1
                ##  col_counter <-1
                ##  x_inverted <- x
                ##
                ##
                ##
                ## while(row_counter<Num_rows) 
                ##        {
                        ## Add row 2 to row 1
                        ##
                ##        x_inverted[row_counter,]  <-  x_inverted[row_counter,]+ x_inverted[row_counter+1,]
                ##        I_matrix[row_counter,]    <-  I_matrix[row_counter,]  + I_matrix[row_counter+1,]
                        ##
                        ## Calculate the inverter 
                        ## (this inverter turns position row_counter, col_counter to 1)
                        ##
                        ## Inverter  <- 1/x[row_counter, col_counter]
                        ## print("Here is the inverter")
                        #  print(Inverter)
                        ##
                        ## apply the inverter
                        ##
                        ## x_inverted[row_counter,]  <-  x_inverted[row_counter,]*Inverter 
                        ## I_matrix[row_counter,]    <-  I_matrix[row_counter,]*Inverter 
                        ## subtract row_counter from row_counter + 1 to make col_counter potion zero                       
                        ## x_inverted[row_counter,]  <-  x_inverted[row_counter,]*Inverter 
                        ## I_matrix[row_counter,]    <-  I_matrix[row_counter,]*Inverter ##while(col_counter<=Num_cols)
                        ##        {
                        ##        print("looping through columns applying inverter")
                        ##        print("row")
                        ##        print(row_counter)
                        ##        print("column")
                        ##        print(col_counter)
                        ##        x_inverted[row_counter, col_counter] <- x[row_counter, col_counter]*Inverter
                        ##        col_counter<-col_counter+1
                        ##        print(x_inverted)
                        ##        } 
                        ## row_counter<-row_counter+1
                        ## col_counter <-row_counter
                        ## }
                        ##
                        ## reduce the row below the current row to zero through addition

                ##  x_inverted
                ## }
         

       ##   }


##  This is Tim Peterson programing assignment 2.  
##  This code provides the inversion of a sqyare matrix using the solve function
##  Note that for a marix to be invetred, it must be square.  so this fuctions verifies the matrix was square
##
cacheSolve <- function(x=matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##
        ## determine the column and rows in the matrix provided
        Num_cols <- ncol(x)
        Num_rows <- nrow(x)
        ##
        ##  Check to make sure this is a square matrix
        ##
        ##
        if (Num_cols != Num_rows) 
                {
                print("Hey knuckle head, this not a square matrix!") 
                }
                else
                {
                print("this is a square matrix")
                print(Num_cols)
                print(Num_rows)
                # 
                # now create the I matrix of the right size
                #
                I_matrix<-matrix(0, Num_cols, Num_rows)
                count<-c(1)
                while (count<=Num_cols) 
                        {
                        I_matrix[count,count]<-c(1)
                        print(count)
                        count<-count+1
                        }
                print("inversion matrix built")
                print(I_matrix)
                ##
                ##
                ##  Nw use the solve function to invert the matrix
                ##
                ##  Note:  I have something incorecct in solve
                x<<- solve(x, I_matrix)
                print(x)
                }
}
