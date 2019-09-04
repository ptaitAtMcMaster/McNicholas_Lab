# CCALL in Julia
ccall is a function in julia which allows one to call c code from julia. This directory contains an example called 
calc_mean.c . 

First define all your functions in a file c file. 
"calc_mean.c"

Next, create the shared library (.so) file as indicated in the makefile of this directory. 

Finally, call it in julia. (see main.jl). 

Note if you make a change, you need to first create the library again, and restart julia. 

