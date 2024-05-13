clc; close all;
K_dt = 474  %(Nm/rad)
B_dt = 0.01 %(Nm/(rad/s))
J = 0.17022 %(Nm/(rad/s^2))

%% Auto Tune
fcut_speed = 20

plant = tf([1],[J, B_dt]);
[sys_pid, info] = pidtune(plant,'PID',fcut_speed*2*pi)

%% Manual Adjustments
%sys_pid.Kd = 0.017379;
%sys_pid.Ki = 6788.7748;
%sys_pid.Kp = 106.3875

%% Plot Response
close all;
%rlocus(sys_pid*plant);
figure
sys = feedback(sys_pid*plant,1);
step(sys);
figure;
bode(sys);
figure;
pzplot(sys);
grid on;

Kps = sys_pid.Kp;
Kis = sys_pid.Ki;
Kds = sys_pid.Kd;
save("Model_Vars.mat","J","B_dt","Kps","Kis","Kds")