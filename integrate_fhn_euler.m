%a0 = -0.1;
%a1 = 2.0;
%d  = 4.0;
%eps  = 0.05;
%dx = 1.0;
%start=0;
%step =1;
%finish=100;
function integrate_fhn_euler(start,finish,step,u0,v0,a0,a1,d,eps,dx,dt)
time = [start+dt:dt:finish];
figure(1);
u = u0 ; v = v0;
for t = time
  [dudt,dvdt] = FHN_equation(u,v,a0,a1,d,eps,dx);
  u+=dt*dudt;
  v+=dt*dvdt;
  if mod(t,step)==0 % Print u to png image every step/dt
     disp([t,mean(mean(u))]);
     surf(u);
     drawnow;
  endif
endfor