%% Mechanical Translational System Solution

tspan = [0,3];
x0 = [0,0];
[t,x] = ode23('mechsys',tspan,x0);
figure(1),clf
subplot(2,1,1)
plot(t,x)
xlabel('t(sec)')
title('Time Response of mechanical system')
text(2,1.2,'Displacement')
text(2,0.2,'Velocity')
d = x(:,1);
v = x(:,2);
subplot(2,1,2);
plot(d,v)
title('Velocity v/s Displacement')
xlabel('Displacement')
ylabel('Velocity')

%% Electrical system

tspan = [0,15];
x0 = [0.5,0];
[t,x] = ode23('electsys',tspan,x0);
subplot(2,1,1)
plot(t,x)
xlabel('t(sec)')
title('Time Response of RLC series circuit')
text(8,1.05,'Capacitor Voltage')
text(8,0.5,'Current')
vc = x(:,1);
i  = x(:,2);
subplot(2,1,2)
plot(vc,i)
title('Current v/s Capacitor Voltage')
xlabel('Capacitor Voltage')
ylabel('Current')

%% Non-linear system

tspan = [0,5];
x0 = [1,0];
[t,x] = ode23('pendulum',tspan,x0);
subplot(2,1,1);
plot(t,x);
xlabel('t(sec)');
title('Time response of a rigid pendulum')
text(3.2,3.5,'Velocity')
text(3.2,1.2,'Angle-rad')
th = x(:,1);
w  = x(:,2);
subplot(2,1,2)
plot(th,w)
title('Angle v/s Velocity')
xlabel('Velocity')
ylabel('Angle')