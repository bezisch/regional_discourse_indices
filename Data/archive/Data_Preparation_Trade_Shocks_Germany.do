* Prepare the German trade data for Finn
* Bundeslandebene, last year is 2019
* Focus on import shocks over last 3 years (d13)
* 4 different indicators, taking into account import shocks from various regions of the world (see what works best, start with worldwide)

global dir "C:\Users\charlott\Dropbox (Personal)"

cap cd "$dir\Paper_Trade_Environment\Data\Shocks"

use DB_Trade_Shocks_For_Analysis_Europe_Elections.dta, clear

keep if country=="Germany"

tab year

keep if year>2007

count

tab nuts2

keep nuts2* year d13_rimp_total d13_rimp_china d13_rimp_linochina d13_rimp_eu10

* Saving final file:

cap cd "$dir\Paper_Finn_Lotti\Data"

save Trade_Shocks_Germany.dta,replace

