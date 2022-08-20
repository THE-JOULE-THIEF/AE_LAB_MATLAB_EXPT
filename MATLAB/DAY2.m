%% construction

X = [1,2,3,4,5,6,7,8,9];
disp(X);
X = 1:9;
disp(X);
X = 1:1:9;
disp(X);
X = linspace(1,100,10);
disp(X);
X = logspace(1,10,10);
disp(X);

%% polynomials
P = [1 -12 0 25 116];
R = roots(P);
disp(R);
Po = poly(R);
disp(Po);
A = [1 2 3;4 5 6;7 8 9];
Q = poly(A);
disp(Q);

%% partial fraction expansion
% PFE
num = [2 5 3 6];
den = [1 6 11 6];
[r,p,k] = residue(num,den);
disp(r);
disp(p);
disp(k);
% poly from r p k 
[num,den] = residue(r,p,k);
printsys(num,den,'s');
% z-p from tf
num = [0 0 4 16 12];
den = [1 12 44 48 0];
[r p k] = tf2zp(num,den);
disp(r);
disp(p);
disp(k);
% tf from zp
z = [ -1;-3];
p = [0;-2;-4;-6];
k = 4;
[num den] = zp2tf(z,p,k);
printsys(num,den,'s');