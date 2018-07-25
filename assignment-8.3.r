#Problem 1
#1. A recent national study showed that approximately 44.7% of college students have used Wikipedia as a
#source in at least one of their term papers. Let X equal the number of students in a random sample of
#size n = 31 who have used Wikipedia as a source.
#Perform the below functions
#a. Find the probability that X is equal to 17
#b. Find the probability that X is at most 13
#c. Find the probability that X is bigger than 11.
#d. Find the probability that X is at least 15.
#e. Find the probability that X is between 16 and 19, inclusive


#Answer 1

#given
#size=31
#prob=0.447

#x~ binom(size=31,prob=0.447)
#x

#a
dbinom(17,size = 31,prob = 0.447)

#b
pbinom(13,size = 31,prob = 0.447)

#c
pbinom(11,size = 31,prob = 0.447,lower.tail = F)

#d
pbinom(14,size = 31,prob = 0.447,lower.tail = F)

#e
#it will take continous values from 16 to 19
sum(dbinom(16:19,size = 31,prob = 0.447))
