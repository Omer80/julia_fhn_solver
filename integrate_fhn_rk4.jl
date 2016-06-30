function integrate_fhn_rk4(start,finish,step,u0,v0,a0,a1,d,eps,dx)
  # FHN model integrator using rk4 step
  time = [start+step:step:finish]
  u = u0
  v = v0
  Vs = FHN.Vs(u0,v0)
  Ps = FHN.Ps(a0,a1,d,eps,dx)
  dt =  dx^2 / (3.0*d)
  t = 0
  imshow(u0)
  ion()
  for tout = time
    println("tout = ", tout)
    while t < tout
      Vs.u,Vs.v = uv_rk4_step(Vs,Ps,dt)
      t+=dt
      clf()
      imshow(Vs.u)
    end
  clf()
  imshow(Vs.u)
  end
end
