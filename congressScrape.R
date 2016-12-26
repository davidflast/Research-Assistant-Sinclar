library(rvest)
library(RCurl)
library(microbenchmark)
library(parallel)
library(compiler)
library(httr)
cl = makeCluster(3)
clusterEvalQ(cl, {library(rvest); library(RCurl);library(httr)})
result = parLapply(cl,93:94,DataScrapeCongress)
stopCluster(cl)
data_scrape_congress <- function(congress_number){
  final = data.frame()
  bill_number =1
  url = paste0("https://www.congress.gov/bill/", congress_number, "-congress/house-bill/1")
  if(http_error(url)){
    Sys.sleep(20)
  }
  while(url.exists(url)){
    if(bill_number %% 500 == 0){
      print(congress_number)
      print(bill_number)
    }
    url = paste0("https://www.congress.gov/bill/", congress_number, "-congress/house-bill/", bill_number)
    #Url stops existing after end of bills for a congress
    bill_info = NULL
    if(http_error(url)){
      Sys.sleep(20)
    }
    congressURL <- read_html(url)
    #gets last name, first name, part, state, and district
    congress_identifier = congressURL %>%
      html_nodes("td") %>%
      html_text() 
    if(length(congress_identifier) != 0){
      identifier = gsub("Rep. ","",congress_identifier[1])
      identifier = gsub("At Large", "0", identifier)
      identifier = strsplit(identifier, " ")
      identifier = unlist(identifier)
      identifier
      # Stops private member bills
      if(identifier[length(identifier)] != "Legislation)"){
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
    url = paste0("https://www.congress.gov/bill/", congress_number, "-congress/house-bill/" , bill_number)
      }
    }
    bill_number = bill_number + 1
    #if(bill_number %% 50 == 0){
    #  Sys.sleep(20)
    #}  
  }
  return(final)
}
DataScrapeCongress = cmpfun(data_scrape_congress)

