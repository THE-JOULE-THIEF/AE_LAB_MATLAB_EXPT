%% Q1

k = input('Enter the value of gain : ');
num = 160 * [0 0 1 18 17];
den = [1 180 1700 0 0];
step(num,den);
grid on
title('Step Response')

%% Q2

num = [0 0 10];
den = [1 2 10];

figure(1),clf
step(num,den);
grid on
title('Step Response')

figure(2),clf
impulse(num,den);
grid on
title('Impulse Response')

num = [0 0 0 10];
den = [1 2 10 0];

figure(3),clf
step(num,den);
grid on
title('Ramp Response')

%% Q3

A = [-1 -0.5 ; 1 0];
B = [0.5 ; 0];
C = [1 0];
D = 0;

figure(1),clf
step(A,B,C,D);
figure(2),clf
impulse(A,B,C,D);