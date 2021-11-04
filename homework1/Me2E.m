function E = Me2E(Me)
global e
%ME2E 这个函数将平近点角转化为偏近点角
if Me<pi
    E=Me+e/2;
else
    E=Me-e/2;
end
x0=E;
fun=@(x)x-e*sin(x)-Me;
dfun=@(x)1-e*cos(x);
error=1e-6;         %设置迭代精度
E=newton_iteration(fun,dfun,x0,error);
end

