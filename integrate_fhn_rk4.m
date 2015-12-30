function integrate_fhn_rk4(start,finish,step,u0,v0,a0,a1,d,eps,dx,dt)
% FHN model integrator using rk4 step
time = [start+dt:dt:finish];
figure(1);
u = u0 ; v = v0;
for t = time
  [u,v] = uv_rk4_step(u,v,a0,a1,d,eps,dx, dt);
  if mod(t,step)==0 % Print u to png image every step/dt
    disp([t,mean(mean(u))]);
    surf(u);
    drawnow;
  endif
endfor