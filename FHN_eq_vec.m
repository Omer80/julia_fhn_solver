function vec_FHN_t = FHN_eq_vec(vec_FHN,a0,a1,d,eps,dx)
vec_u = vec_FHN(1:size(vec_FHN)(2)/2);
vec_v = vec_FHN(size(vec_FHN)(2)/2+1:end);
u = reshape(vec_u,[sqrt(size(vec_u)(2)),sqrt(size(vec_u)(2))]);
v = reshape(vec_v,[sqrt(size(vec_v)(2)),sqrt(size(vec_v)(2))]);
[u_t, v_t] = FHN_equation(u,v,a0,a1,d,eps,dx);
vec_u_t = reshape(u_t,[1,size(u_t)(1)*size(u_t)(2)]);
vec_v_t = reshape(v_t,[1,size(v_t)(1)*size(v_t)(2)]);
vec_FHN_t = horzcat(vec_u_t,vec_v_t);