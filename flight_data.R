library(RCurl)
library(rvest)
x = read.html("https://www.google.com/maps/dir/Washington,+DC/6651+Clemens+Avenue,+University+City,+MO+63130/")
PUT()
c = read_xml("http://clerk.house.gov/xml/lists/MemberData.xml")

town = c %>%
  html_nodes("townname") %>%
  html_text() 
state = c %>%
  html_nodes("state") %>%
  html_text() 
lastname = c %>%
  html_nodes("lastname") %>%
  html_text() 
firstname = c %>%
  html_nodes("firstname") %>%
  html_text() 
state_and_twon = paste(town, ", ", state)
final = data.frame(lastname, firstname, town, state,state_and_twon)
write.csv(final, "congressmen_flight_distance.csv")
