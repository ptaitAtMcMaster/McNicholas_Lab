# Executables 
In julia, you can compile code using the PackageCompiler.jl package into an executable that requires no precompilation time like usual scripts. 


## Installation
Here is how to install it. 

```julia
using Pkg 
Pkg.add("PackageCompiler")

```


## Usage 

Please see example of hello-build.jl 

Here is how to compile julia code.

Within the directory open up a julia cmd line and run the following. 

```julia
using PackageCompiler 

	build_executable("hello-build.jl","hello")


	# for general case its 
	# build_executable("foo-build.jl","<insert executable name>")
```

After about a minute or two, you will see a new directory called builddir appear. Within this directory, the binary file hello is created. 

Note that to run the binary, you should add the builddir to path as follows.. 

PATH="/path/to/builddir:${PATH}"


I typically add this into my .bashrc file if I am constantly using this binary. 




