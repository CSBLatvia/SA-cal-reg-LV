# Number of working days permonth, quarter, and year
# Specified according to the national holidays of Latvia

require(data.table)

# https://data.gov.lv/dati/lv/dataset/darba-dienu-skaits
# dat_long <- fread("https://data.gov.lv/dati/dataset/7a0b81ac-4b17-41fd-8f1e-218be04d99c7/resource/d73c2f3a-41d6-4091-bea8-a3cdb2017f17/download/darba_dienu_skaits.csv")
dat_long <- fread("input/darba_dienu_skaits_1995-2027.csv")

dat_wide <- dcast.data.table(data = dat_long, formula = Year ~ Period,
                             value.var = "WD")

fwrite(x = dat_long, file = "data/count_WD_long.csv")
fwrite(x = dat_wide, file = "data/count_WD_wide.csv")
