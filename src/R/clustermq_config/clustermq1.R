#!/cvmfs/soft.computecanada.ca/easybuild/software/2017/avx512/Compiler/gcc7.3/r/3.5.2/bin/Rscript

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



