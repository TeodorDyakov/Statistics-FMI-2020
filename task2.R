
#load the library UsingR
library(UsingR)

#save the first and second column of homedata in vectors
y1970price = homedata$y1970
y2000price = homedata$y2000

#find min and max price in 2000 year
minPrice = min(y2000price)
maxPrice = max(y2000price)

#return the price of the house that had min price in 2000 in 1970
y1970price[which(y2000price == minPrice)]

#return the price of the house that had max price in 2000 in 1970
y1970price[which(y2000price == maxPrice)]

#return the five most expensive houses in 2000
tail(sort(y2000price), 5)

#the number of houses more expensive than 750,000 in year 2000
sum(y2000price > 750000)

#find the prices of those with price more than 750,000
mostExpensive = y2000price[which(y2000price > 750000)]
#or
mostExpensive = y2000price[y2000price > 750000]

#The mean value of mostExpensive
mean(mostExpensive)

#the price of the house which price has decreased from 1970 to 2000
y2000price[which(y1970price > y2000price)]
