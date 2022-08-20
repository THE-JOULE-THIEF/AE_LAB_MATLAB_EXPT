function xdot = electsys(t,x)
V = 1;
R = 1.4;
L = 2;
C =0.32;
xdot = [x(2)/C;((1/L)*((V-x(1))-(R*x(2))))];