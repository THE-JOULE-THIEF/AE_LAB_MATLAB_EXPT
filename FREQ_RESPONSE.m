%% Frequency Response

%% Bode Plot
%% Eg I
% Transfer function

num = [0 0 25];
den = [1 4 25];
figure(1),clf
bode(num,den);
title('Bode Plot');
grid on

% State-space

A = [0 1 ; -25 -4];
B = [0 ; 25];
C = [1 0];
D = 0;
figure(2),clf
bode(A,B,C,D);
title('Bode Plot');

%% Eg II

num = [0 20 20 10];
den = [1 11 10 0];
nyquist(num,den);
v = [-2 3 -3 3];
axis(v)
grid on

%% Root Locus
%% Eg I

num = [0 0 0 0 1];
den = [1 1.1 10.3 5 0];
r = rlocus(num,den);
plot(r);
v = [-6 6 -6 6];
axis(v);
grid on
title('Root Locus Plot')
xlabel('Real axis')
ylabel('Imaginary axis')

%% Frequency Response Design

num = [0 0 0 100];
den = [1 26 216 576];
[numo deno denc] = fdesign(num,den);
w = 0.1:0.1:20;
[mag phase] = bode(numo,deno,w);
db = 20*log10(mag);
figure(1),clf
plot(w,db)
grid on
xlabel('w(rad/sec)')
ylabel('db')
figure(2),clf
plot(w,phase)
grid on
xlabel('w(rad/sec)')
ylabel('Degrees')