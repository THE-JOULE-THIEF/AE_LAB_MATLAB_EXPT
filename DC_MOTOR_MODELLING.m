%% Step response for the open loop system

J = 0.01;
B = 0.1;
K = 0.01;
R = 1;
L = 0.5;

num = [0 0 K];
den = [(J*L) (L*B)+(J*R) (B*R)+(K^2)];
step(num,den,0:0.1:3);
title('Step response for the open loop system')

%% State space
% Incorrect XX
J = 0.1;
B = 0.1;
K = 0.01;
R = 1;
L = 0.5;

A = [((-B)/J) K/J ((-K)/J) ((-R)/J)];
B = [0 1/L];
C = [1 0];
D = 0;

step(A,B,C,D)

%% Position control

J = 3.2284e-6;
B = 3.5077e-6;
K = 0.0274;
R = 4;
L = 2.75e-6;

num = [0 0 K];
den = [(J*L) (L*B)+(J*R) (B*R)+(K^2)];
step(num,den,0:0.001:0.2);
title('Step response for the open loop system')

%% State space model

J = 3.2284e-6;
B = 3.5077e-6;
K = 0.0274;
R = 4;
L = 2.75e-6;

A = [0    1     0; ...
     0 ((-B)/J) K/J; ...
     0 ((-K)/J) ((-R)/J)];
B = [0 ; 0 ; 1/L];
C = [1 0 0];
D = 0;
step(A,B,C,D)