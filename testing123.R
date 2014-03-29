## Testing out some GitHub repository stuff with H & E

library(XML)

site <- "http://www.baseball-reference.com/postseason/2013_WS.shtml"

tables <- readHTMLTable(site)

Sox_Batting <- tables[[1]]

greatest_DH_of_all_time <- Sox_Batting[which.max(Sox_Batting$OPS),1]

paste(greatest_DH_of_all_time, "is the greatest DH of all time")