function theta = Me2theta(Me)
global e
%   这个函数将平近点角转化为真近点角，使用牛顿迭代法
E=Me2E(Me);
theta=2*atan(sqrt((1+e)/(1-e))*tan(E/2));





end

