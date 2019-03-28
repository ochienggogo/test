##Practical Assignment 2: An introduction to R
#Question 1
#Create a data frame named customer_details, with 3 rows and 4 columns and following values as shown in the code:
#creating the individual vectors 
Name<-c("James","Irene","Khalid")
Age<-c(25,30,35)
Sales<-c(600,400,200)
Month<-c("February","February","February")

#creating a dataframe 
Customer_details<-data.frame(Name,Age,Sales,Month)
Customer_details

#Question 2
#This question is related to creating lists
Last_Name<-c("Potter","Riddle","Dumbledore")
First_Name<-c("Harry","Tom","Albus")
Age<-c(18,50,120)
Profession<-c("Student","Magician","Headmaster")
Names<-list(Last_Name, First_Name, Age, Profession)
print(Names)
#How will you display all the values in attribute Last Name?
Names[[1]] #or print(Names[1])
#[1] "Potter"     "Riddle"    
#[3] "Dumbledore"

#How will you display the 3rd element of attribute Age?
Names[[3]][3]
#[1] 120

#Question 3
#Load the package ggplot2 into the workspace
library(ggplot2)
data()
data(msleep) #loads msleep dataset into the workspace 
??msleep
msleep2<-data.frame(msleep) #load msleep dataset into our own dataset
nrow(msleep2) #no of rows
names(msleep2)  #displays all names/variables of this dataset 
names(msleep2)[names(msleep2)=='vore']<-'type' #Rename the column vore to type
names(msleep2) #displays all names again 

msleep2 #print dataset 
msleep2[1:10,3] #Display first ten values in the column type you just created

str(msleep2$type)
typeof(msleep2$type)
str(msleep2)
typeof(msleep2$sleep_cycle)
str(msleep2$sleep_cycle)
str(msleep2$bodywt)
msleep2

#Choose the columns name, genus, vore, and sleep_total from the dataset and store it in a
#new dataset.
new_dataset<-data.frame(msleep2$name,msleep2$genus,msleep2$type,msleep2$sleep_total)
new_dataset
names(new_dataset)

write.csv(new_dataset,"Createdcsv.csv")