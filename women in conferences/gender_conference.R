final
# 2006
gender = as.character(regdata2006[,10] )
rank = as.character(regdata2006[,11])
role = as.character(regdata2006[,19])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = length(which(gender=="female" & role =="Poster Proposal"))
menposter = length(which(gender== "male" & role =="Poster Proposal"))
percentposter = womenposter / (menposter + womenposter)
womenpanel = length(which(gender=="female" & role =="Paper Proposal"))
menpanel = length(which(gender=="male" & role =="Paper Proposal"))
percentpanel = womenpanel/ (menpanel + womenpanel)
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate Professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate Professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant Professor"))
womenassist = length(which(gender=="female" & rank =="Assistant Professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate Student"))
womenstudent = length(which(gender=="female" & rank =="Graduate Student"))
percentstudent = womenstudent / (menstudent + womenstudent)

six = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
        womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
        womenstudent)
final = data.frame(six)
row.names(final) <- c("percent women", "number of women", "total attendees" , 
                      "percent poster", "women posters" , "percent panel", "women panel",
                      "percent professor", "women professors", "percent assistant", 
                      "women assistant", "percent student", "women student")

# 2007
gender = as.character(regdata2007[,10] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
gender
rank = as.character(regdata2007[,11])
role = as.character(regdata2006[,19])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

seven = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
        womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
        womenstudent)

#2008
gender = as.character(regdata2008[,10] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
gender
rank = as.character(regdata2008[,11])
role = as.character(regdata2006[,19])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

eight = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
          womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
          womenstudent)

#2009
gender = as.character(regdata2009[,4] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
rank = as.character(regdata2009[,5])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

nine = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
          womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
          womenstudent)
#2010
gender = as.character(reg2010[,10] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
rank = as.character(reg2010[,11])
role = as.character(reg2010[,19])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = length(which(gender=="female" & role =="poster"))
menposter = length(which(gender== "male" & role =="poster"))
percentposter = womenposter / (menposter + womenposter)
womenpanel = length(which(gender=="female" & role =="paper"))
menpanel = length(which(gender=="male" & role =="paper"))
percentpanel = womenpanel/ (me.npanel + womenpanel)
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

ten = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
           womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
           womenstudent)
ten
#2011
gender = as.character(regdata2011[,11] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
rank = as.character(regdata2011[,12])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

eleven = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
         womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
         womenstudent)

#2012
gender = as.character(regdata2012[,11] )
gender = gsub("she", "female", gender)
gender = gsub("he", "male", gender)
rank = as.character(regdata2012[,12])
role = as.character(regdata2012[,21])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = length(which(gender=="female" & role =="poster"))
menposter = length(which(gender== "male" & role =="poster"))
percentposter = womenposter / (menposter + womenposter)
womenpanel = length(which(gender=="female" & role =="paper"))
menpanel = length(which(gender=="male" & role =="paper"))
percentpanel = womenpanel/ (menpanel + womenpanel)
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

twelve = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
        womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
        womenstudent)
twelve

#2013
gender = as.character(regdata2013[,11] )
gender = gsub("she", "female", gender)
gender = gsub("She", "female", gender)
gender = gsub("he", "male", gender)
gender = gsub("He", "male", gender)
rank = as.character(regdata2013[,12])
role = as.character(regdata2013[,21])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = length(which(gender=="female" & role =="poster"))
menposter = length(which(gender== "male" & role =="poster"))
percentposter = womenposter / (menposter + womenposter)
womenpanel = length(which(gender=="female" & role =="paper"))
menpanel = length(which(gender=="male" & role =="paper"))
percentpanel = womenpanel/ (menpanel + womenpanel)
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

thirteen = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
           womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
           womenstudent)
thirteen

#2014
gender = as.character(reg2014[,9] )
gender = gsub("Female", "female", gender)
gender = gsub("Male", "male", gender)
rank = as.character(reg2014[,4])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

fourteen = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
             womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
             womenstudent)
fourteen

final = cbind(final, seven, eight, nine, eleven, twelve, thirteen, fourteen)
final
write.csv(final, "women_in_conferences.csv")

#2015
gender = as.character(reg2015[,54] )
gender = gsub("Female", "female", gender)
gender = gsub("Male", "male", gender)
rank = as.character(reg2015[,12])
numwomen = length(which(gender == "female"))
nummen = length(which(gender == "male"))
total = numwomen + nummen
percentwomen = numwomen / total
womenposter = 0
menposter = 0
percentposter = 0
womenpanel = 0
menpanel = 0
percentpanel = 0
menprof = length(which(gender=="male" & (rank =="Professor" | rank == "Associate professor")))
womenprof = length(which(gender=="female" & (rank =="Professor" | rank == "Associate professor")))
percentprof = womenprof / (menprof + womenprof)
menassist = length(which(gender=="male" & rank =="Assistant professor"))
womenassist = length(which(gender=="female" & rank =="Assistant professor"))
percentassist = womenassist/(menassist + womenassist)
menstudent = length(which(gender=="male" & rank =="Graduate student"))
womenstudent = length(which(gender=="female" & rank =="Graduate student"))
percentstudent = womenstudent / (menstudent + womenstudent)

fifthteen = c(percentwomen,numwomen,total,percentposter,womenposter,percentpanel,
             womenpanel,percentprof,womenprof,percentassist,womenassist,percentstudent,
             womenstudent)
#2016
studentgender = as.character(registration_students[,13])
studentgender[agrep("Women", studentgender)] = "female"
studentgender[agrep("Men", studentgender)] = "male"

facultygender = as.character(registration_faculty[,13])
facultygender[agrep("Women", facultygender)] = "female"
facultygender[agrep("Men",facultygender)] = "male"
rank = as.character(registration_faculty[,4])
length(which(studentgender == "female")) + length(which(facultygender == "female"))
length(which(studentgender == "male")) + length(which(facultygender =="male"))
109 + 69
