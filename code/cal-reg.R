# Calendar regressors for seasonal adjustment
# Specified according to the national holidays of Latvia
# 
# Usable for JDemetra+
# 
# Convertation from XLSX to CSV

require(data.table)
require(openxlsx)

TD_M <- read.xlsx(xlsxFile = "data/TD.xlsx", sheet = 1, detectDates = T)
TD_Q <- read.xlsx(xlsxFile = "data/TD.xlsx", sheet = 2, detectDates = T)
WD_M <- read.xlsx(xlsxFile = "data/WD.xlsx", sheet = 1, detectDates = T)
WD_Q <- read.xlsx(xlsxFile = "data/WD.xlsx", sheet = 2, detectDates = T)

setDT(TD_M)
setDT(TD_Q)
setDT(WD_M)
setDT(WD_Q)

setnames(TD_Q, old = 1, new = "date")
setnames(WD_Q, old = 1, new = "date")

fwrite(x = TD_M, file = "data/TD_M.csv", scipen = 20)
fwrite(x = TD_Q, file = "data/TD_Q.csv", scipen = 20)
fwrite(x = WD_M, file = "data/WD_M.csv", scipen = 20)
fwrite(x = WD_Q, file = "data/WD_Q.csv", scipen = 20)
