y = ccall((:sum_mean,"libmean.so"), # CALL 
        Float64, # Output
        (Float64,Float64), # Input 
        2.0, # input 1 and 2
        5.0)
println(y);

z = ccall((:something ,"libmean.so"), # CALL 
        Float64, # Output
        (Float64,Float64), # Input 
        2.0, # input 1 and 2
        5.0)

println(z); 
