function laplacian(a,dx)
# Computes Laplacian of a matrix
# Usage: al=laplacian(a,dx)
# where  dx is the grid interval

       (ns,ns)=size(a)
       aa=zeros(ns+2,ns+2)
       xr=2:(ns+1)

       aa[xr,1]=a[:,end]
       aa[xr,end]=a[:,1]
       aa[1,xr]=a[end,:]
       aa[end,xr]=a[1,:]
       aa[2:end-1,2:end-1]=a

       lap=aa[xr-1,xr]+aa[xr+1,xr]+aa[xr,xr-1]+aa[xr,xr+1]-4*aa[xr,xr]
       lap=lap/(dx*dx)
end

