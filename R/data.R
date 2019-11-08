#' Mortality rates for 47 countries or sub-populations, various years
#'
#' Mortality rates for 47 countries or sub-populations, various years
#' 
#' @format A tibble with 47 rows and 3 columns
#' \describe{
#' \item{\code{country}}{Country name. This includes sub-units such as
#'     the NZ Maori population.}
#' \item{\code{ccode}}{Country or unit code}
#' \item{\code{data}}{A list column containing the data for that
#'     country. Consists of five columns: year, age, female, male, and
#'     total, with the latter three being estimated mortality rates
#'     for the year and age combination.}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name country_data
#' @source mortality.org
'mortality'


#' Mortality rates in Britain
#'
#' Mortality rates in Britain 1841-2016
#' 
#' @format A tibble with 19,536 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name britain
#' @source mortality.org
'britain'


#' Mortality rates in France 1816-2016
#'
#' Mortality rates in France 1816-2016
#' 
#' @format A tibble with 22,311 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name france
#' @source mortality.org
'france'

#' Mortality rates in Ireland 1950-2014
#'
#' Mortality rates in Ireland 1950-2014
#' 
#' @format A tibble with 7,215 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name ireland
#' @source mortality.org
'ireland'

#' Mortality rates in New Zealand 1901-2008
#'
#' Mortality rates in New Zealand 1901-2008
#' 
#' @format A tibble with 11,988 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name nzl
#' @source mortality.org
'nzl'

#' Mortality rates in Japan 1947-2016
#'
#' Mortality rates in Japan 1947-2016
#' 
#' @format A tibble with 7,770 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name japan
#' @source mortality.org
'japan'

#' Mortality rates in Sweden
#'
#' Mortality rates in Sweden
#' 
#' @format A tibble with 29,526 rows and 5 columns
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{age}}{Age}
#' \item{\code{female}}{Female mortality rate}
#' \item{\code{male}}{Male mortality rate}
#' \item{\code{total}}{Total morality rate}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name sweden
#' @source mortality.org
'sweden'

#' Birth rates in the US and England/Wales 1938-2015
#'
#' Birth rates in the US and England/Wales 1938-2015
#' 
#' @format A tibble
#' \describe{
#' \item{\code{year}}{Year}
#' \item{\code{month}}{Month}
#' \item{\code{n_days}}{N days in month}
#' \item{\code{births}}{N births}
#' \item{\code{total_pop}}{National Population}
#' \item{\code{births_pct}}{N births / National Population}
#' \item{\code{births_pct_day}}{Average number of births per million
#'     people per day, for the observed month}
#' \item{\code{date}}{Date}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name okboomer
#' @source US Census Bureau and UK ONS
'okboomer'
