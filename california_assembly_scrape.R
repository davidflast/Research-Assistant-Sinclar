library("rvest")
final = data.frame()
congress_number = 5


for(congress_number in c(01,03,05,07,09)){
  print(congress_number)
  url = paste0("https://en.wikipedia.org/wiki/California_State_Legislature,_200",congress_number,"-0",congress_number + 1,"_session")
  
  temp <-url %>% 
    read_html %>%
    html_nodes("table")


  senate <- html_table(temp[8], header=TRUE,fill=TRUE)
  house <- html_table(temp[9],header=TRUE,fill=TRUE)
  senate
  final = rbind(final,data.frame(senate[[1]][1],senate[[1]][2],senate[[1]][3],congress_number))
  final = rbind(final,data.frame(house[[1]][1],house[[1]][2],house[[1]][3],congress_number))
}
