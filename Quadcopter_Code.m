clear;
clc;

m = 0.468;
g = 9.81;
l = 0.225;
k = 2.98*10^-6;
b = 1.14*10^-7;

Ix = 4.856 * 10^-3;
Iy = 4.856 * 10^-3;
Iz = 8.801*10^-3;

S = sim("trajfollow");

figure(1)
plot3(S.xd.data, S.yd.data, S.zd.data)
title("Desired Path v Actual Path")
xlim([(min(S.xd.data)-2) (max(S.xd.data) + 2)]);
ylim([(min(S.yd.data)-2) (max(S.yd.data) + 2)]);
zlim([(min(S.zd.data)-2) (max(S.zd.data) + 2)]);
hold on;

plot3(S.x.data, S.y.data, S.z.data)
legend('Desired Path', 'Actual Path')

hold off;