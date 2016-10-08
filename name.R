#Function to separate full name in one column into two columns with first and last name, respectively
#The argument lastname sets whether the last name or the first name comes first

name.function<-function(x,lastname=FALSE){    
    
    library(tidyr)
  
    x<-data.frame(x)
    
    colnames(x)<-c("Name")
    
    if(lastname==FALSE){
    
      #Split names

          x2<-extract(x, Name, c("Firstname", "Lastname"), "([^ ]+) (.*)")
    
    }else{
      
          x2<-extract(x, Name, c("Lastname", "Firstname"), "(.*) ([^ ]+)")
      
          x2<-data.frame(x2$Firstname, x2$Lastname)
          colnames(x2)<-c("Firstname","Lastname")  
      
    }
    
   x2 
      
}

#Example

 x<-c("Jesper Martinsson","John Doe")

 name.function(x,lastname=FALSE)


