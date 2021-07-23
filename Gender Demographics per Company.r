company_preferences <- c()
cities              <- c()
for(i in 1:nrow(Cust_ID_Red)){
    user_data   <- Cab_Data[Cab_Data$`Customer ID` %in% Cust_ID_Red$`Customer ID`[i],]$Company
    fav_company <- names(which.max(table(user_data)))
    company_preferences <- c(company_preferences, fav_company) 

    user_data   <- Cab_Data[Cab_Data$`Customer ID` %in% Cust_ID_Red$`Customer ID`[i],]$City
    fav_city    <- names(which.max(table(user_data)))
    cities      <- c(cities, fav_city)
}