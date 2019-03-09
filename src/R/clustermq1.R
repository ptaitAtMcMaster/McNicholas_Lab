# https://cran.r-project.org/web/packages/clustermq/vignettes/quickstart.html

library(clustermq)
set.seed(3)

f1 <- function(df){
	`%>%` = dplyr::`%>%`
	df %>% 
	  dplyr::mutate(area = Sepal.Length * Sepal.Width) %>%
	  dplyr::select(., Species, Sepal.Length, Sepal.Width, area) %>%
	  head()
}

Q(f1, df=list(iris), n_jobs=1, template=list(log_file="./%a.log"))


