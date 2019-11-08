library(tidyverse)
library(janitor)
library(here)

path <- "rawdata/"


filenames <- dir(path = "rawdata",
                 pattern = "*.txt",
                 full.names = TRUE)

get_country_name <- function(x){
    read_lines(x, n_max = 1) %>%
        str_extract(".+?,") %>%
        str_remove(",")
}

shorten_name <- function(x){    
    str_replace_all(x, " -- ", " ") %>%
        str_replace("The United States of America", "USA") %>%
        snakecase::to_any_case()
}


countries <- tibble(country = map_chr(filenames, get_country_name),
                        ccode = map_chr(country, shorten_name),
                        path = filenames)

mortality <- countries %>%
    mutate(data = map(path,
                      ~ read_table(., skip = 2, na = "."))) %>%
    unnest(cols = c(data)) %>%
    clean_names() %>%
    mutate(age = as.integer(recode(age, "110+" = "110"))) %>%
    select(-path) %>%
    group_by(country, ccode) %>%
    nest()



save(mortality, file = "data/mortality.rda", compress = "xz")


britain <- read_table(paste0(path, "GBRTENW.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
britain$age <- as.integer(recode(britain$age, "110+" = "110"))

## britain <- britain %>% mutate(ratio = male / female,
##                               deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

save(britain, file = "data/britain.rda", compress = "xz")

france <- read_table(paste0(path, "FRATNP.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
france$age <- as.integer(recode(france$age, "110+" = "110"))

save(france, file = "data/france.rda", compress = "xz")


## france <- france %>% mutate(ratio = male / female,
##                             deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

ireland <- read_table(paste0(path, "IRL.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
ireland$age <- as.integer(recode(ireland$age, "110+" = "110"))

save(ireland, file = "data/ireland.rda", compress = "xz")

tmp <- nzl %>% mutate(ratio = male / female,
                          deciles = cut(ratio,
                                        breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
                          pct_diff = ((male - female) / (male + female))*100,
                          bin_ratio = ntile(ratio, 100))

tmp <- sweden %>% mutate(ratio = male / female,
                         deciles = cut(ratio,
                                       breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
                         pct_diff = ((male - female) / (male + female))*100,
                         bin_ratio = ntile(ratio, 100))

library(colorspace)
tmp %>%
    filter(age < 101) %>%
    ggplot(aes(x = year, y = age, fill = deciles)) +
    geom_raster() +
    scale_fill_discrete_diverging("Green-Orange") + 
    scale_x_continuous(breaks = seq(1750, 2015, by = 15)) +
    ylim(c(0, 100)) +
        guides(fill = guide_legend(nrow = 1, title.position = "top", label.position = "bottom")) +
    labs(x = "Year", y = "Age", fill = "M/F Mortality Ratio") +
    theme_minimal()  + 
    theme(legend.position = "top",
          legend.title = element_text(size = 8)) 


nzl <- read_table(paste0(path, "NZL_NM.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
nzl$age <- as.integer(recode(nzl$age, "110+" = "110"))

## nzl <- nzl %>% mutate(ratio = male / female,
##                               deciles = cut(ratio, breaks = quantile(ratio, probs = seq(0, 1, 0.1), na.rm = TRUE)),
##                               pct_diff = ((male - female) / (male + female))*100,
##                               bin_ratio = ntile(ratio, 100))

save(nzl, file = "data/nzl.rda", compress = "xz")

japan <- read_table(paste0(path, "JPN.Mx_1x1.txt"), skip = 2, na = ".") %>%
    clean_names()
japan$age <- as.integer(recode(japan$age, "110+" = "110"))

save(japan, file = "data/japan.rda", compress = "xz")


sweden <- read_table(paste0(path, "SWE.Mx_1x1.txt"), skip = 2, na = ".") %>% clean_names()
sweden$age <- as.integer(recode(sweden$age, "110+" = "110"))

save(sweden, file = "data/sweden.rda", compress = "xz")

okboomer <- read_csv("rawdata/boom_births.csv")

save(okboomer, file = "data/okboomer.rda", compress = "xz")

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


