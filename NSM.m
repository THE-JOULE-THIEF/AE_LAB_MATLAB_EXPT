%% Numerical Statistical Method

%% Gauss Siedel
dx = 1;
x =2;
iter = 0;
disp('iter g dx x');
while abs(dx)>=0.001 && iter<100
        iter = iter+1;
        g = ((-1/9)*(x^3))+((6/9)*(x^2))+(4/9);
        dx = g-x;
        x = x+dx;
        fprintf('%g',iter);
        disp([g dx x]);
end

%% Newton Rapshon
dx = 1;
x = input('Enter initial estimate: ');
iter = 0;
disp('iter dx x');
while abs(dx)>=0.01 && iter<100
    iter = iter+1;
    Dc = 0-((x^3)-(6*(x^2))+(9*x)-4);
    J = (3*(x^2))-(12*x)+9;
    dx = Dc/J;
    x = x+dx;
    fprintf('%g',iter);
    disp([Dc J dx x]);
end