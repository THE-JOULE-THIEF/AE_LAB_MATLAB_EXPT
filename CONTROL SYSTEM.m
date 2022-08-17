%% CONTROL Systems

%% Step Response
num = [0 0 1];
den = [1 0.2 1];
figure(1),clf
step(num,den);
grid on;
title('Step Response');

%% Impulse Response
figure(2),clf
impulse(num,den);
grid on
title('Impulse Response')

%% State space
A = [0 1;-1 -1];
B = [0;1];
C = [1 0];
D = 0;
figure(1),clf
step(A,B,C,D);
grid on
title('Step Response');

figure(2),clf
impulse(A,B,C,D);
grid on
title('Unit Impulse Response')
