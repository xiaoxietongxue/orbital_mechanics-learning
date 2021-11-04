global miu e Q_pX h a
miu=398600;                 %地球-卫星系统的近似引力参数

%%   TLE转换轨道根数
i=51.6443*pi/180;           % 轨道倾角
Omega=37.2310*pi/180;       % 升交点赤经
e=0.0003902;                % 离心率
w=154.0732*pi/180;          % 近地点幅角
Me=349.0463*pi/180;         % 平近点角
    num_of_turns_perday=15.48838565;    % 每天环绕地球的次数
a=turn2a(num_of_turns_perday);          % 轨道的半长轴


%%  coe-RV准备工作---将a转换成h（角动量）,Me转换成theta（真近点角）

h=a2h(a);
theta=Me2theta(Me);

%%  coe-RV开始
coe=[h,e,Omega,i,w,theta];
[r,v]=coe2rv(coe,miu);
disp('国际空间站的位置矢量为')
disp(r)
disp('国际空间站的速度矢量为')
disp(v)



%%  绘制二维平面轨道
plot_2d()

%%  绘制三维轨道
plot_3d()








        