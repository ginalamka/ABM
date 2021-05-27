# ABM

**Overall goal:**

Write a functioning individual (or agent) based model. This should be a basic model that starts with **100 individuals** and maintains roughly this population size over **50 years**; some variation is good, but you don’t want a wildly fluctuating population size. Both sexes are capable of **reproducing after 1 year**, and **offspring litter/clutch/brood size is 1 individual per year**. No individuals live past **3 years**. Your code should output the **total population size, sex ratio, and number of newborns each year** to a text file of some kind. Also, your code should be in a repository on GitHub, along with a readme that outlines how to run your code.


steps:
1. Set working directory
1. Set model parameters
1. Create a for loop for replication (skip this for now)
1. Initialize population (n=100)
1. Create a for loop for 50 years (time)
  1. Age the population (start at -1 - 3)
  1. Introduce mortality (density independent and dependent)
      1. Age-related mortality (at age 4)
  1. Make some babies
  1. Output for every year
      1. Pop size
      1. Sex ratio
      1. number newborns
1. Close loops for time and replication
1. Summarize parameters/output and put into text file for later
