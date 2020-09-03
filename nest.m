function y=nest(d,c,x,b)
if nargin<4,b=zeros(d,1);end
y=c(d+1)
for i=d:-1:1
    y=y.*(x-b(i))+c(i);
end
%嵌套乘法
%d 多项式的阶
%x 


%format long