if(!require("devtools")) install.packages("devtools")
if(!require("minimalTemplate")) devtools::install_github("kguidonimartins/minimalTemplate", force=TRUE)

library(minimalTemplate)
?minimalTemplate::download_csl()


# First, search by your preferred citation style using:
(eco <- grep(pattern = "plos", x = rcrossref::get_styles(), value = TRUE))
# then:
download_csl(journal_style = eco[1], directory = "")
