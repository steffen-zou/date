library(lubridate)

month_diff_ceiling <- function(start_date,end_date) {
    
    (year(end_date) - year(start_date)) * 12 + 
        (month(end_date) - month(start_date)) +
        as.numeric(day(end_date) > day(start_date))
    
}

month_diff_ceiling(as.Date("2021-10-31"), as.Date("2022-02-28"))

month_diff_ceiling(as.Date("2021-10-31"), as.Date("2022-03-01"))

month_diff_ceiling(as.Date("2021-10-31"), as.Date("2022-03-30"))

month_diff_ceiling(as.Date("2021-10-31"), as.Date("2022-03-31"))

month_diff_ceiling(as.Date("2021-11-30"), as.Date("2021-12-29"))

month_diff_ceiling(as.Date("2021-11-30"), as.Date("2021-12-30"))

month_diff_ceiling(as.Date("2021-11-30"), as.Date("2021-12-31"))

month_diff_ceiling(as.Date("2021-12-01"), as.Date("2021-12-31"))

month_diff_ceiling(as.Date("2021-12-01"), as.Date("2021-12-01"))
