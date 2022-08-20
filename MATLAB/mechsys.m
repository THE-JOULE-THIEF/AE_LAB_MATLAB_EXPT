function xdot = mechsys(t,x);
F = 25;
M = 1;
B = 5;
K = 25;
xdot = [x(2);((1/M)*(F-B*x(2)))-(K*x(1))]