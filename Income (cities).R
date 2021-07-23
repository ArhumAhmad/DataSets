incomes <- c()

for(i in 1:nrow(City)){
    city_data <- Cab_Data[Cab_Data$City %in% City$City[i],]
    users     <- data.frame(unique(city_data$`Customer ID`))
    income    <- Cust_ID_Red[Cust_ID_Red$`Customer ID` %in% users,]$`Customer ID`
    income    <- mean(income)

    incomes <- c(incomes, income)
}