function [u_next,v_next] = uv_rk4_step(u,v,a0,a1,d,eps,dx, dt)
[du_k1, dv_k1] =	FHN_equation(u,v,a0,a1,d,eps,dx);	
u_k1 = dt*du_k1 ; v_k1 = dt*dv_k1;
[du_k2, dv_k2] =	FHN_equation((u+(1/2)*u_k1),(v+(1/2)*v_k1),a0,a1,d,eps,dx);
u_k2 = dt*du_k2 ; v_k2 = dt*dv_k2;
[du_k3, dv_k3] =	FHN_equation((u+(1/2)*u_k2),(v+(1/2)*v_k2),a0,a1,d,eps,dx);
u_k3 = dt*du_k3 ; v_k3 = dt*dv_k3; 
[du_k4, dv_k4] =	FHN_equation((u+u_k3),(v+v_k3),a0,a1,d,eps,dx);
u_k4 = dt*du_k4 ; v_k4 = dt*dv_k4;
u_next	=	u+(1/6)*u_k1+(1/3)*u_k2+(1/3)*u_k3+(1/6)*u_k4;
v_next	=	v+(1/6)*v_k1+(1/3)*v_k2+(1/3)*v_k3+(1/6)*v_k4;