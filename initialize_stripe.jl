function initialize_stripe(ndim,a0,a1)
  c = [1,0,(1/a1 - 1),(-a0/a1)]
  u_roots = roots(c)
  u_up_state = max(u_roots)
  u_down_state = min(u_roots)
  u0 = u_up_state*ones(ndim,ndim)
  x_start = floor(ndim/5)
  x_stop = floor(ndim/5) + ceil(ndim/20)
  u0[:,x_start:x_stop] =  u_down_state
  v0 = (u0-a0)/a1
end

