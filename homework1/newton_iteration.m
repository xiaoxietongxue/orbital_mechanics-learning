function y=newton_iteration(fun,dfun,x0,EPS) %简单牛顿迭代法
%fun即迭代函数，dfun即迭代函数的一阶导数，x0为迭代初值，EPS为精度

x1=x0-fun(x0)/dfun(x0);
while abs(x1-x0)>EPS
    x0=x1;
    x1=x0-fun(x0)/dfun(x0);


end
y=x1;
end



