remotes::instal_github("cran/fOptions")
remotes::instal_github("cran/fAsianOptions")
remotes::instal_github("cran/prob")

# Probability and Probability Distributions

library("prob_1.0-1.tar")


##Generating Sample Spaces

s<-data.frame(coin = c("Head","Tail"))
s

s<-data.frame(Toss1 = c("H","H","T","T"))
s

tosscoin(3)

#roll of a fair die having six sides
rolldie(1)

#roll of a fair die 4 times ahving six sides
rolldie(4)

#roll of a fair die having 4 sides, 3 times
rolldie(3, nsides=4)

cards()

#sampling from urns. An urn contains 3 numbered balls
urnsamples(1:3, size=2, replace=T, ordered=T)
urnsamples(1:3, size=2, replace=T, ordered=F)
urnsamples(1:3, size=2, replace=F, ordered=T)

#???
s<-tosscoin(3)
s

#Let A be the event of getting at least two heads
A<- s[c(1,2,3,5)]

#Let B be the event that the first toss is H
B<- subset(s, toss1=="H")

#???

#roll a 6 sided die 3 times
s<- rolldie(3)

#Let C be the event where the sum of the face values is at least 15
C<- subset(s, X1+X2+X3>=15)
C


## Union, Intersection, Difference, and Compliment

s<- cards()
s

#Let A be all diamonds
#Let B be cards with value 7-9

A<- subset(s, suit=="Diamond")
B<- subset(s, rank %in% 7:9)
