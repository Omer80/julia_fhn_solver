time = linspace(0,200,1000);
u0 = rand(32,32);
v0 = rand(32,32);
a0 = -0.1;
a1 = 2.0;
d  = 4.0;
eps  = 0.05;
dx = 1.0;
lsode_options("integration method","stiff");
lsode_options("absolute tolerance",1e-4);
lsode_options("relative tolerance",1e-4);
vec_u0 = reshape(u0,[1,size(u0)(1)*size(u0)(2)]);
vec_v0 = reshape(v0,[1,size(v0)(1)*size(v0)(2)]);
vec_FHN0 = horzcat(vec_u0,vec_v0);
size(vec_FHN0)
T = 0:1e-2:1; % time vector
K = sprandsym(32,1)+eye(32); % symmetric stiffness matrix
x0 = rand(32,1); % initial values
r = @(t) rand(32,1)*sin(t); % excitation vector
f = @(x,t) (-K*x+r(t)); % right-hand-side function
%x=lsode (f, x0, T); % get solution from lsode
%x
dydt = @(vec) FHN_eq_vec(vec,a0,a1,d,eps,dx);
x=lsode (dydt,transpose(vec_FHN0), time); % get solution from lsode
