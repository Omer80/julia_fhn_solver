  module FHN
include("FHN_equation.jl")
include("uv_rk4_step.jl")
include("laplacian.jl")
include("integrate_fhn_rk4.jl")

using PyPlot

export Ps, Vs

type Vs
  u
  v
end

type Ps
  a0::Float64
  a1::Float64
  d::Float64
  eps::Float64
  dx::Float64
end

end
