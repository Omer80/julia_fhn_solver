function rk4_step(vector, dt)
k_1	=	hf(x_n,y_n)	

k_2	=	hf(x_n+1/2h,y_n+1/2k_1)	

k_3	=	hf(x_n+1/2h,y_n+1/2k_2)	

k_4	=	hf(x_n+h,y_n+k_3)	

y_(n+1)	=	y_n+1/6k_1+1/3k_2+1/3k_3+1/6k_4+O(h^5)