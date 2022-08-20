function xdot = pendulum(t,x);
W = 2;
B = 0.02;
L = 0.6;
g = 9.81;
m = W/g;
xdot = [x(2);(((-B/m)*(x(2)))-((W/(m*L))*sin(x(1))))];