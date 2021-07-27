n <- 100
names <- unique(Trav_vs_Prof$City)
df2 <- Trav_vs_Prof[Trav_vs_Prof$City %in% names[1],]
df <- df2[sample(nrow(df2), n),]

for(i in 2:length(names)){
  if(i == "SAN FRANCISCO CA"){
  }else{
    df2 <- Trav_vs_Prof[Trav_vs_Prof$City %in% names[i],]
    df2 <- df2[sample(nrow(df2), n),]
    df <- rbind(df, df2)
  }
}