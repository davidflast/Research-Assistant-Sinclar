library(rvest)
library(RCurl)
final = data.frame()

congressURL <- read_html("http://assembly.ca.gov/assemblymembers")
#gets last name, first name, part, state, and district
party = congressURL %>%
  html_nodes(".views-field-field-member-party") %>%
  html_text() 
party = gsub("\n","",party)
party = gsub(" ", "",party)

district = congressURL %>%
  html_nodes(".views-field-field-member-district") %>%
  html_text() 
district = gsub("\n","",district)

name = congressURL %>%
  html_nodes(".active") %>%
  html_text() 

name = gsub(" ", "",name)
name = gsub("\n","",name)
name = gsub("edit","",name)
name = strsplit(name, ",")
names = vector()
for(i in 6:85){
  names[i-4] = paste(name[[i]][2], name[[i]][1])
}
names[1] = "names"
final = rbind(district, names, party)
final

write.csv(final, "current_california_house_members.csv")
