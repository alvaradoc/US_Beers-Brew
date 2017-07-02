
#install libraries used
install.packages("ggplot2")


#create variables for the url for the data we are utlilizing
brewery.url <- 'https://raw.githubusercontent.com/alvaradoc/US_Beers-Brew/master/Data/Breweries.csv'
beer.url <- 'https://raw.githubusercontent.com/alvaradoc/US_Beers-Brew/master/Data/Beers.csv'

#import the data into R
breweries <- read.csv(brewery.url, header = TRUE)
beers <- read.csv(beer.url, header = TRUE)

#check the type of data and ensure successful import
str(breweries)


#change data types from factors to characters for breweries
breweries$Name <- as.character(breweries$Name)
breweries$City <- as.character(breweries$City)
breweries$State <- as.character(breweries$State)

#check the data types for beers and ensure successful import
str(beers)

#change data types from factors to characters for beers
beers$Name <- as.character(beers$Name)
beers$Style <- as.character(beers$Style)


#table number of breweries per state

count(breweries, vars = "breweries$State")

#Rename Brew_id to Brewery_Id to merge with Beer dataset
colnames(breweries)[1] <- "Brewery_id"

#Rename 'Name' in Breweries data to be unique for merge
colnames(breweries)[2] <- "Brewery"

#merge two datasets into one
brew.beer <- merge.data.frame(beers, breweries, by = "Brewery_id")

#attach dataset to refer to column names
attach(brew.beer)

#view first six rows of our combined dataset
head(brew.beer)

#view last six rows of our combined dataset
tail(brew.beer)


#we found rows to change for Style
Style[Style == ''] <- NA

#get the summary for the dataset
summary(brew.beer)

#####Create a Bar graph for Median ABV and IBU

#first, we calculate the Median for both
medians <- aggregate(brew.beer[, 4:5], by = list(State), FUN = median, na.rm = TRUE, na.action = 0)

#Plot Median ABV by State
ggplot(data = medians, aes(x = Group.1, y = ABV, width = 0.5)) + geom_bar(stat = "identity", position = "identity") + labs(x = "State", y = "ABV")

#Plot Median IBU by State
ggplot(data = medians, aes(x = Group.1, y = IBU, width = 0.5)) + geom_bar(stat = "identity", position = "identity") + labs(x = "State", y = "IBU")


#Here, we determine which state has the beer with the highest ABV
State[which.max(ABV)]

#Conversely, we find the state whose beer has the highest IBU
State[which.max(IBU)]

#We obtain the summary statistics for ABV
summary(ABV)

#Now we seek to find if a relationship between bitterness and alcohol content exist
ggplot(data = brew.beer, aes(ABV, IBU)) + geom_point() + geom_smooth(method = lm, se = FALSE)

#detatch the dataset
detatch(brew.beer)


