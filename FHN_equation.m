function [u_t,v_t] = FHN_equation(u,v)
a0 = 1;
a1 = 1;
d  = 100;
u_t = u - u.^3 - v + laplacian_2D_periodic(u);
v_t = e.*(u - a1 * v - a0) + d*laplacian_2D_periodic(v);