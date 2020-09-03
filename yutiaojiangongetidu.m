%预条件共轭梯度法
function x=yutiaojiangongetidu(A,b,x0,epsa)
n=size(A,1);
x(0)=x0;
r(0)=b-A*x;
d(0)=r;
for k=0:(n-1)
    alpha=(r'*r)/(d'*A*d);
    x=x+alpha*d;
    r2=b-A*x;
    if( (norm(r2)<=epsa) || (k==n-1) )
        x;
        break;
    end
    beta=norm(r2)^2/norm(r)^2;
    d=r2+beta*d;
    r=r2;
end
%x0=[0;0]
%gongetidu(A,b,x0,expsa)
%b=[6;3]
%A=[2 2;2 5]
%expsa=0.001