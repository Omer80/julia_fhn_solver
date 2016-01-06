function FHN_equation(u,v,a0,a1,d,eps,dx)
  u_t = u - u.^3 - v + laplacian(u,dx)
  v_t = eps.*(u - a1 * v - a0) + d*laplacian(v,dx)
  return u_t, v_t
end
