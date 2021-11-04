function  plot_3d()
clf
global a Q_pX e h miu
theta=0:pi/1000:2*pi;
A=Q_pX'*[1 0 0;0 1 0;0 0 1];   %经过313旋转之后的3个坐标轴方向矢量
i=A(1,:);
j=A(2,:);
k=A(3,:);
r=(h^2/miu)./(1+e*cos(theta));
c=a*e;
s_x=i(1)*(r.*cos(theta)+c)+r.*sin(theta)*j(1);
s_y=(r.*cos(theta)+c)*i(2)+r.*sin(theta)*j(2);
s_z=(r.*cos(theta)+c)*i(3)+r.*sin(theta)*j(3);
o_x=-a*e;
o_y=0;
o_z=0;
x=s_x+o_x;
y=s_y+o_y;
z=s_z+o_z;
plot3(x,y,z);%画出图2-三维轨道图
xlabel('x');
ylabel('y');
zlabel('z');
grid
hold on
end

