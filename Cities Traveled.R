lst <- c()
for(i in 1:nrow(Cust_ID_Red)){
    x <- Cab_Data[Cab_Data$`Customer ID` %in% Cust_ID_Red$`Customer ID`[i],]$City
    x <- length(unique(x))

    lst <- c(lst, x)
}