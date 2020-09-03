%sin 计算器键 使用九阶多项式近似sin曲线
function y=sin2(x)
n=10;
b=pi/4+(pi/4)*cos((1:2:2*n-1)*pi/(2*n));
yb=sin(b);
c=newtdd(b,yb,n);
s=1;
x1=mod(x,2*pi);
if x1>pi
    x1=2*pi-x1;
    s=-1;
end
if x1>pi/2
    x1=pi-x1;
end
y=s*nest(n-1,c,x1,b);