function [u_t,v_t] = FHN_equation(u,v,a0,a1,d,eps,dx)
u_t = u - u.^3 - v + laplacian_2D_periodic(u,dx);
v_t = eps.*(u - a1 * v - a0) + d*laplacian_2D_periodic(v,dx);