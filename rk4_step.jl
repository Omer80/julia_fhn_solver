function rk4_step(rhs,vec, dt)
k_1	=	dt*rhs(vec)
k_2	=	dt*rhs(vec+(1/2)*k_1)
k_3	=	dt*rhs(vec+(1/2)*k_2)
k_4	=	dt*rhs(vec+k_3)
vec_next	=	vec+(1/6)*k_1+(1/3)*k_2+(1/3)*k_3+(1/6)*k_4
