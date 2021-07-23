incomes <- c()

for(i in 1:nrow(City)){
    city_data <- city_data <- Cab_Data[Cab_Data$City %in% City$City[i],]
    users     <- unique(city_data$`Customer ID`)
    data      <- Cust_ID_Red[Cust_ID_Red$`Customer ID` %in% t(users),]
    income    <- mean(data$`Income (USD/Month)`)

    incomes <- c(incomes, income)
}