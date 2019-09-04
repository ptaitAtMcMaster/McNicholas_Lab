# Pass by value examples 

y = ccall((:sum_mean,"libmean.so"), # CALL 
        Float64, # Output
        (Float64,Float64), # Input 
        2.0, # input 1 and 2
        5.0)

z = ccall((:something ,"libmean.so"), # CALL 
        Float64, # Output
        (Float64,Float64), # Input 
        2.0, # input 1 and 2
        5.0)


# Pass by reference example

i = Ref(Int32(40)); 
println(i.x)

# no return type. 
ccall((:passRef,"libmean.so"),
	Cvoid,
	(Ref{Cint},),i); 

println(i.x)



# CONVERSION CHART FOR TYPES AS TAKING FROM Julia v1.1.1

#=  
https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/index.html 
=#
