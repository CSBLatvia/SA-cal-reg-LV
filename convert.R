# Calendar regressors for seasonal adjustment
# Specified according to the national holidays of Latvia
# 
# Usable for JDemetra+
# 
# Convertation from XLSX to CSV

require(data.table)
require(openxlsx)

TD_M <- read.xlsx(xlsxFile = "TD.xlsx", sheet = 1, detectDates = T)
TD_Q <- read.xlsx(xlsxFile = "TD.xlsx", sheet = 2, detectDates = T)
WD_M <- read.xlsx(xlsxFile = "WD.xlsx", sheet = 1, detectDates = T)
WD_Q <- read.xlsx(xlsxFile = "WD.xlsx", sheet = 2, detectDates = T)

setDT(TD_M)
setDT(TD_Q)
setDT(WD_M)
setDT(WD_Q)

setnames(TD_Q, old = 1, new = "date")
setnames(WD_Q, old = 1, new = "date")

fwrite(x = TD_M, file = "TD_M.csv")
fwrite(x = TD_Q, file = "TD_Q.csv")
fwrite(x = WD_M, file = "WD_M.csv")
fwrite(x = WD_Q, file = "WD_Q.csv")
