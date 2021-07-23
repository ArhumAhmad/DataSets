cities_card <- c()
cities_male <- c()
cities_company <- c()
cities_distance <- c()
cities_profit <- c()
cities_transactions <- c()

for(i in 1:nrow(City)){
  city_data <- Cab_Data[Cab_Data$City %in% City$City[i],]
  n <- nrow(city_data)
  
  card_prop <- city_data[city_data$Payment_Mode %in% "Card",]
  card_prop <- nrow(card_prop) / n
  cities_card <- c(cities_card, card_prop)
  
  male_prop <- city_data[city_data$Gender %in% "Male",]
  male_prop <- nrow(male_prop) / n
  cities_male <- c(cities_male, male_prop)

  company_prop <- city_data[city_data$Company %in% "Pink Cab",]
  company_prop <- nrow(company_prop) / n
  cities_company <- c(cities_company, company_prop)

  mean_dist <- mean(city_data$`KM Travelled`)
  cities_distance <- c(cities_distance, mean_dist)

  mean_charged <- mean(city_data$`Price Charged`)
  mean_cost <- mean(city_data$`Cost of Trip`)
  mean_profit <- mean_charged - mean_cost
  cities_profit <- c(cities_profit, mean_profit)

  total_transactions <- n
  total_users <- length(unique(city_data$`Customer ID`))
  mean_transactions <- total_transactions/total_users
  cities_transactions <- c(cities_transactions, mean_transactions)
}