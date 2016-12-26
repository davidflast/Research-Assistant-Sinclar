library(jsonlite)
library(httr)
congressmen_list = congressmen
congressmen$V7 = sapply(congressmen$V7, as.character)
congressmen$V7[2]
congressmen$flight3_cost = 0
for(cur_num in 2:442){
  if(congressmen$V9[cur_num] != ""){
    x <- list(
      request = list(
        passengers = list(
          adultCount = 1
        ),
        slice = list(
          list(
            origin = "DCA", 
            destination = congressmen$V9[cur_num], 
            date = "2016-11-17"
          )
        ), 
        refundable = "false",
        solutions = 1
      )
    )
    
    url <- "https://www.googleapis.com/qpxExpress/v1/trips/search"
    json <- jsonlite::toJSON(x, auto_unbox = TRUE)
    req = POST(url, query = list(key = "AIzaSyDrbD3FSoJoti8uptVL3r9uzgEFj5bgVq8"), body = json, content_type_json())
    content(req)
    y = content(req)
    if(!is.null(y$trips$tripOption[[1]]$pricing[[1]]$saleTotal)){
      congressmen$flight3_cost[cur_num] = y$trips$tripOption[[1]]$pricing[[1]]$saleTotal
    }
  }
}
write.csv(congressmen, file = "congressmen_flight_cost.csv")
