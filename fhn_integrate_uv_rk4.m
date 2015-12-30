%% running
start = 0;
finish = 10;
step = 1;
u0 = rand(128,128);
v0 = rand(128,128);
a0 = -0.1;
a1 = 2.0;
d  = 4.0;
eps  = 0.05;
dx = 1.0;
dt = 0.01;%0.1*(dx^2)/(2.0*d);
time = [start+dt:dt:finish];
figure(1);
u = u0 ; v = v0;
for t = time
  [u,v] = uv_rk4_step(u,v,a0,a1,d,eps,dx, dt);
  if mod(t,step)==0 % Print u to png image every step/dt
     t
     mean(mean(u))
     surf(u);
  endif
endfor