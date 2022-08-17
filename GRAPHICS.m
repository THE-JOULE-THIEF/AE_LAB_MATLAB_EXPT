%% grpahics

%% Sine Wave
x = linspace(0,2*pi,30);
y = sin(x);
plot(x,y);
title('Sine Wave');
grid on
text(2.5,1,'Em');
xlabel('Time');
ylabel('Amp');

%% 3 phase Sine Wave
x = linspace(0,2*pi,30);
y = sin(x);
plot(x,y,'r');
hold on
z = sin((x)+(2*pi/3));
plot(x,z,'b');
p = sin((x)+(4*pi/3));
plot(x,p,'y');
title('3 Phase Sine Wave');
xlabel('Time');
ylabel('Amplitude');

%% 50Hz Sine Wave Generator
x = linspace(0,0.02,100);
y = sin(2*pi*50*x);
plot(x,y);
title('50Hz Sine Wave');
xlabel('Time');
ylabel('Amp');

%% random matrix
A = rand(2);
disp(A);
A = rand(5,1);
disp(A);
A = rand(1,5);
disp(A);