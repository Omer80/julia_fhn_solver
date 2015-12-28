function a = laplacian_2D_periodic(a,dx)
b = ones(size(a)(1)+2,size(a)(2)+2);
c = zeros(size(a));
b(2:end-1,2:end-1)=a;
b(2:end-1,1)=a(:,end);
b(2:end-1,1)=a(:,end);
b(2:end-1,end)=a(:,1);
b(end,2:end-1)=a(1,:);
b(1,2:end-1)=a(end,:);
c = b(2:end-1,3:end)+b(2:end-1,1:end-2)+b(3:end,2:end-1)+b(1:end-2,2:end-1);
c-= 4.0*b(2:end-1,2:end-1);
a=c/(dx^2);


