dt = 0.1/(2*4.0);
start = 0;
finish = 10;
step = 1;
time = [start+step:dt:finish];
u0 = rand(128,128);
v0 = rand(128,128);

vec_u0 = reshape(u0,[1,size(u0)(1)*size(u0)(2)]);
vec_v0 = reshape(v0,[1,size(v0)(1)*size(v0)(2)]);
vec_FHN0 = horzcat(vec_u0,vec_v0);
vec = vec_FHN0;
rhs = @FHN_eq_vec
figure(1);
for t = time
  vec = rk4_step(rhs, vec, dt);
  if mod(t,step)==0
     t
     vec_u = vec(1:size(vec)(2)/2);
     vec_v = vec(size(vec)(2)/2+1:end);
     u = reshape(vec_u,[sqrt(size(vec_u)(2)),sqrt(size(vec_u)(2))]);
     v = reshape(vec_v,[sqrt(size(vec_v)(2)),sqrt(size(vec_v)(2))]);
     mean(u);
     #clf();
     surf(u);
   endif
endfor