library(rvest)
library(RCurl)

final = data.frame()
for(congress_number in 93:114){
  while(url.exists(url)){
    url = paste0("https://www.congress.gov/bill/", congress_number, "-congress/house-bill/", bill_number)
    #Url stops existing after end of bills for a congress
    if(url.exists(url)){
      congressURL <- read_html(url)
      #gets last name, first name, part, state, and district
        congress_identifier = congressURL %>%
          html_nodes("td") %>%
          html_text() 
        if(length(congress_identifier) != 0){
          identifier = gsub("Rep. ","",congress_identifier[1])
          identifier = strsplit(identifier, " ")
          identifier = unlist(identifier)
          last_name = identifier[1]
          last_name = gsub(',', "", last_name)
          first_name = identifier[2]
          info = unlist(strsplit(identifier[length(identifier)-2],'-'))
          party = substring(info[1],2)
          state = info[2]
          district = substring(info[3],1,nchar(info[3]) - 1)
          #gets number of cosponsors
          courl = paste0(url,"/cosponsors")
          cosponsorURL <- read_html(courl)
          costring = cosponsorURL %>%
            html_nodes(".wrapper_std") %>%
            html_text()
          cosponsor_string = unlist(strsplit(costring[2], " "))
          num_cosponsors = as.numeric(cosponsor_string[length(cosponsor_string) - 1])
          bill_info = data.frame(congress_number, bill_number,last_name, first_name, party,state, district, num_cosponsors)
          final = rbind(final, bill_info)
    }
    bill_number = bill_number +  1
    }
  }
}

