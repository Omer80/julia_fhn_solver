function [u_t,v_t] = FHN_equation(u,v)
a0 = -0.1;
a1 = 2.0;
d  = 4.0;
eps  = 0.05;
dx = 1.0;
u_t = u - u.^3 - v + laplacian_2D_periodic(u,dx);
v_t = eps.*(u - a1 * v - a0) + d*laplacian_2D_periodic(v,dx);