library(rvest)

states = tolower(state.name)
states = states[-2]
states = gsub(" ","-",states)
final = data.frame()
for(state in states){
  print(state)
  url = paste('http://www.politico.com/2012-election/results/president/' , state, sep="")
  politicoURL <- read_html(url)
  counties =politicoURL %>%
   html_nodes(".results-county") %>%
   html_text()
  percentage = politicoURL %>%
    html_nodes(".results-percentage") %>%
    html_text() 
  party = politicoURL %>%
    html_nodes(".results-party") %>%
    html_text()
  
  party = party[-1]
  i = 0
  while(i == 0)
    if(party[1] != "Party"){
      party = party[-1]
    } else {
      party = party[-1]
      i = 1
    }
  gop = which(party=="GOP")
  dem = which(party == "Dem")
  percent = unlist(str_split(percentage, '%'))
  percent =percent[c(TRUE,FALSE)]
  percent = percent[-1]
  i = 0
  while(i == 0){
    if(percent[1] != ""){
      percent = percent[-1]
    } else {
      percent = percent[-1]
      i = 1
    }
  }
  percent = as.numeric(percent)
  
  county <-unlist(str_split(counties,"[0-9]",2))
  county
  county = county[c(FALSE, TRUE)]
  state_name = rep(gsub("-"," ", state), length(county))
  raw = data.frame(county,state_name,percent[dem], percent[gop])
  final = rbind(final, raw)
}
final
write.csv(final,file="county-2012-data.csv")
