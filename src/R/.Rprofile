
q <- function(save="no", ...) {
  quit(save=save, ...)
}

# set a CRAN mirror
local({
       ## set cran mirror
       r <- getOption("repos")
       r["CRAN"] <- "http://cran.utstat.utoronto.ca/"

       ## get default packages 
       defpkg <- getOption("defaultPackages")
       options(
               repos=r, 
               defaultPackages = c(defpkg, "MASS", "dplyr", "tidyr", "ggplot2") 
       )
})


.First <- function(){
 cat("\nR session started ", date(), "\n") 
}

.Last <- function(){ 
 cat("\n R session ended ", date(), "\n")
}

message("*** Loaded .Rprofile ***")
