function laplacian_2D_neumann(a,dx)
    laplacian = zeros(u.shape)
    laplacian[1:-1, 1:-1] =  (u[1:-1,2:] + u[1:-1,:-2]
                              + u[2:,1:-1] + u[:-2,1:-1]
                              -  4.0*u[1:-1,1:-1])/(dx2)
    # Neumann boundary conditions
    # edges
    laplacian[0,1:-1] =  (u[0,2:] + u[0,:-2]
                          + 2.0*u[1,1:-1]
                          - 4.0*u[0,1:-1])/(dx2)
    laplacian[-1,1:-1] =  (u[-1,2:] + u[-1,:-2]
                           + 2.0*u[-2,1:-1]
                           - 4.0*u[-1,1:-1])/(dx2)
    laplacian[1:-1,0] = (2.0*u[1:-1,1]
                         + u[2:,0] + u[:-2,0]
                         -  4.0*u[1:-1,0])/(dx2)
    laplacian[1:-1,-1] =   (2.0*u[1:-1,-2]
                            + u[2:,-1] + u[:-2,-1]
                            -  4.0*u[1:-1,-1])/(dx2)
    # corners
    laplacian[0,0]  =(2.0*u[0,1]   + 2.0*u[1,0]   - 4.0*u[0,0])/(dx2)
  laplacian[end,0] =(2.0*u[-1,1]  + 2.0*u[-2,0]  - 4.0*u[-1,0])/(dx2)
  laplacian[0,end] =(2.0*u[0,-2]  + 2.0*u[1,-1]  - 4.0*u[0,-1])/(dx2)
  laplacian[end,end]=(2.0*u[-1,-2] + 2.0*u[-2,-1] - 4.0*u[-1,-1])/(dx2)
end


