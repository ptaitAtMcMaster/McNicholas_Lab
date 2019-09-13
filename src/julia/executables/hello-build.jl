

# You can name this anything, but give it something meaningful

module Hello


    # main function, similar to main.c , or main.cpp 
    # ARGS are your arguements in bash for your executable. 

    Base.@ccallable function julia_main(ARGS::Vector{String})::Cint

	println("Hello world with arguements $ARGS")


	laugh() 


	# Must return an integer just like in c
        return 0;
    end

    # you can add functions here. 

    function laugh() 
    
    println("Haha") 

    end


end
