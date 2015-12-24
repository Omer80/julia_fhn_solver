time = linspace(0,200,1000);
u0 = rand(32,32);
v0 = rand(32,32);

vec_u0 = reshape(u0,[1,size(u0)(1)*size(u0)(2)]);
vec_v0 = reshape(v0,[1,size(v0)(1)*size(v0)(2)]);
vec_FHN0 = horzcat(vec_u0,vec_v0);

FHN = lsode("FHN_eq_vec", vec_FHN0, time);
FHN(end)