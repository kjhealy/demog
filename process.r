library(tidyverse)
library(janitor)
library(here)

path <- "rawdata/"

britain <- read_table(paste0(path, "GBRTENW.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
britain$age <- as.integer(recode(britain$age, "110+" = "110"))

## britain <- britain %>% mutate(ratio = male / female,
##                               deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

save(britain, file = "data/britain.rda")

france <- read_table(paste0(path, "FRATNP.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
france$age <- as.integer(recode(france$age, "110+" = "110"))

save(france, file = "data/france.rda")


## france <- france %>% mutate(ratio = male / female,
##                             deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

ireland <- read_table(paste0(path, "IRL.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
ireland$age <- as.integer(recode(ireland$age, "110+" = "110"))

save(ireland, file = "data/ireland.rda")

## ireland <- ireland %>% mutate(ratio = male / female,
##                               deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

nzl <- read_table(paste0(path, "NZL_NM.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
nzl$age <- as.integer(recode(nzl$age, "110+" = "110"))

## nzl <- nzl %>% mutate(ratio = male / female,
##                               deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

save(nzl, file = "data/nzl.rda")

japan <- read_table(paste0(path, "JPN.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
japan$age <- as.integer(recode(japan$age, "110+" = "110"))

save(japan, file = "data/japan.rda")


sweden <- read_table(paste0(path, "SWE.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
sweden$age <- as.integer(recode(sweden$age, "110+" = "110"))

save(sweden, file = "data/sweden.rda")




okboomer <- read_csv("rawdata/boom_births.csv")

save(okboomer, file = "data/okboomer.rda")

start_date <- "1938-01-01"
end_date <- "1991-12-01"
by_unit = "year"

###--------------------------------------------------
### Time series
###--------------------------------------------------

## break_vec <- seq(from=as.Date(start_date), to=as.Date(end_date), by = "month")
## break_vec <- break_vec[seq(25, length(break_vec), 60)]
## title_txt <- "Monthly Birth Rates, 1938-1991"
## subtitle_txt <- "Average births per million people per day."


