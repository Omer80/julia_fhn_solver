function integrate_fhn_rk4(start,finish,step,u0,v0,a0,a1,d,eps,dx)
  # FHN model integrator using rk4 step
  time = [start+step:step:finish]
  u = u0
  v = v0
  dt =  dx^2 / (3.0*d)
  t = 0
  for tout = time
    println("tout = ", tout)
    while t < tout
      u,v = uv_rk4_step(u,v,a0,a1,d,eps,dx, dt)
      t+=dt
    end
  imshow(u)
  end
end

