lst <- c()
for(i in 1:nrow(Cab_Data)){
  x <- Cust_ID_Red[Cust_ID_Red$`Customer ID` %in% Cab_Data$`Customer ID`[i],]$Gender
  lst <- c(lst, x)
}
