setwd("C:/Users/HP/Box/New Computer/Auburn/Data/Output/ABM")
#example IBM code

#parameters
maxage        = 3 #add one at first, so they will die at 4, start at -1
timeperiod    = 50
broodsize     = 1 #aka fecundity
k             = 100 #aka carrying capacity. this will have variance but be roughly this size

#initialize population <----- for mosquitos we will have to think carefully about how to do this without 
#simulating every individual right away. I made this mistake before and crashed a cluster node!
pop = matrix(nrow=100, ncol=5)            #each individual gets its own row
colnames(pop) <- c("id", "sex", "mom", "dad", "age") #just to give me a better understanding of what these variables are
pop[,1] = seq(1,100,1)                    #each individual has unique ID name
pop[,2] = sample(c(0,1),100,replace=T)    #each individual assigned male (1) or female (0) #sample from zero 100 times, with replacements. aka set sex
pop[,3] = rep(0,100)                      #mom id - later will not be 0, this is useful for debugging #saying replicate 0 100 times
pop[,4] = rep(0,100)                      #dad id - later will not be 0, this is useful for debugging
pop[,5] = sample(c(-1,3),100,replace=T)   #set age between 0 and 4 because we add one at the first generation
#...you can add other columns for other species-specific characteristics you want to track

