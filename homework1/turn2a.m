function a = turn2a(num_of_turns_pd)
global miu
% 本函数将卫星每天绕行地球的圈数转化为轨道的半长轴
turn_per_second=num_of_turns_pd/24/3600;
T=1/turn_per_second;
a=(T*sqrt(miu)/(2*pi))^(2/3);

end

