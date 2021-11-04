function plot_2d()
%%  绘制二维平面轨道
global e h miu
theta=0:pi/1000:2*pi;
r_x=h^2/miu*(1./1+e*cos(theta)).*cos(theta);
r_y=h^2/miu*(1./1+e*cos(theta)).*sin(theta);
subplot(2,2,1)
plot(r_x,r_y)
xlabel('x')
ylabel('y')
hold on
subplot(2,2,2)
r=(h^2/miu)./(1+e*cos(theta));
polar(theta,r)
hold on
end

