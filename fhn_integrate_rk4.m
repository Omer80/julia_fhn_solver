dt = 0.1;
start = 0;
finish = 10;
step = 1;
time = [0:dt:10];
u0 = rand(3,3);
v0 = rand(3,3);

vec_u0 = reshape(u0,[1,size(u0)(1)*size(u0)(2)]);
vec_v0 = reshape(v0,[1,size(v0)(1)*size(v0)(2)]);
vec_FHN0 = horzcat(vec_u0,vec_v0);
vec = vec_FHN0;
rhs = @FHN_eq_vec
for t = time
  vec = rk4_step(rhs, vec, dt);
  if mod(t,step) 
end
