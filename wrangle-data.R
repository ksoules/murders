library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total/population * 10^5)
save(murders, file = "rda/murders.rda")

# the save() command saves objects as an .rda file

# This process can save time when the transformation of the raw data into something that
# can be used in final analysis can be complex. By doing this, we do not have to do
# that every time we start the file 
