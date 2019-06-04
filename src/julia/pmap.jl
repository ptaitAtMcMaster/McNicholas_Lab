# make sure you have either 
# a) if interactive session loaded Julia and any other modules 
# b) if running through sbatch calling this file through a job.sh 


using Distributed, Random



# @everywhere pushes any functions, or data to each cpu 
# @distributed runs a for loop over each cpu. (I do not personally use this)


# exmaple parallels script 


# add number of processes 
addprocs(10)


@everywhere function genRandom(n,x) 
	


	return (rand(n)+x)

end



# returns an array of results (an array of an array of numbers)
# here x will be pushed to 10 processes for 1:10 
results = pmap(x -> genRandom(100,x),1:10)



rmprocs(10)

