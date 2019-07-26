## Add the following inside ~/.bashrc under the compute canada modules you load 
## save .bashrc

# User specific aliases and functions
module load nixpkgs/16.09  gcc/7.3.0 julia/1.1.0 r/3.5.2

export R_HOME=/cvmfs/soft.computecanada.ca/easybuild/software/2017/avx512/Compiler/gcc7.3/r/3.5.2/lib64/R
export R_LIBS=/home/taitpa/Rpkg/
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$R_HOME/lib"

## reload the bash shell session - type the following at bash/shell command line
source ~/.bashrc

## start julia
julia

## add RCall from the github repo
]
add https://github.com/JuliaInterop/RCall.jl.git
ctrl-C
exit()

## start a new Julia session and type the following commands at the julia prompt
using RCall
R"rnorm(10)"


## sample outout 
julia> using RCall
[ Info: Recompiling stale cache file /home/taitpa/.julia/compiled/v1.1/RCall/8GFyb.ji for RCall [6f49c342-dc21-5d91-9882-a32aef131414]

R session started  Fri Jul 26 15:57:21 2019 
┌ Warning: RCall.jl: *** Loaded .Rprofile ***
└ @ RCall ~/.julia/packages/RCall/iRP4R/src/io.jl:113

julia> R"rnorm(10)"
RObject{RealSxp}
 [1]  1.00549877  0.15037856 -1.35540111 -1.18895106  0.17441325  0.88666967
 [7] -0.08915152  0.30157032  0.11228415  0.51032748




