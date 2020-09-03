%二分法
function xc=fpi(g,x0,k)
    x(1)=x0;
for i=1:k
    x(i+1)=g(x(i));
end
xc=x(k+1);

%g=@(x)cos(x)
%xc=fpi(g,0,10)
%xc=fpi(f,1.5,10)

%cos的不动点