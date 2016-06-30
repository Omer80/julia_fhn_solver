# julia FHN model solver
The objective is to create a basic ODE/PRE integration code using
RK4 method in time. The functions will all have a specific form of 
variables - function(Vs,Ps,Es)
Vs - will contain the fields variables, and so each field can be accessed 
with Vs[0] etc
Ps - will contain the parameters of the model
Es - will contain the setup parameters for the integration

The question is whether to use a simple laplacian by matrix manipulation
or to create a sparse laplacian matrix for either 1D or 2D case.

to use:
include("FHN.jl")
FHN.integrate_fhn_rk4(0,100,1.0,rand(512,512),rand(512,512),0.1,0.1,1.0,0.01,0.5)
