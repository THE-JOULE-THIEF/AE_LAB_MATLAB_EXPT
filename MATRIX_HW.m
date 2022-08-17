%% Generate a random matrix [5x5]order and [3x3] order
A = rand(5);
B = rand(3);
%% Generate a random row vector of 5 elements
C = rand(1,5);
%% Generate a random column vector of 100 elements
D = rand(100,1);
%% Generate [A33 A34 A35] of A
E = A(3,3:5);
%% Generate [A22 A23 A24]...
%           [A32 A33 A34]
%           [A42 A43 A44] of A
F = A(2:4,2:4);
%% Generate [A21 A31 A41 A51]
G = A(2:5,1)';
%% Generate [A32 A33 A34 A35 B11 B12 B13]
H = [A(3,2:5) B(1,1:3)];

%% Display
disp(A);
disp(B);
disp(C);
disp(D);
disp(E);
disp(F);
disp(G);
disp(H);