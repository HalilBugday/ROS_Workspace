%3D Matrix
R = [1,0,0; 0,1,0; 0,0,1];
t=pi/2;

Rx = [1 ,0, 0; 0 ,cos(t), -sin(t); 0 ,sin(t) ,cos(t)];
Ry = [cos(t) ,0 ,sin(t); 0 ,1, 0; -sin(t), 0, cos(t)];

%Part1
R1a=R*Rx; %first x-axis.
R2a=R1a*Ry; %then y-axis.

%Part2
R1b=R*Ry; %first y-axis.
R2b=R1b*Rx; %then x-axis.

figure(1)
trplot(R, 'R', 'color', 'black', 'length', 1.0);
grid
figure(2)
trplot(R1a, 'R1a', 'color', 'black', 'length', 1.0);
grid
figure(3)
trplot(R2a, 'R2a', 'color', 'black', 'length', 1.0);
grid
figure(4)
trplot(R, 'R', 'color', 'black', 'length', 1.0);
grid
figure(5)
trplot(R1b, 'R1b', 'color', 'black', 'length', 1.0);
grid
figure(6)
trplot(R2b, 'R2b', 'color', 'black', 'length', 1.0);
grid
title('3D Rotation');
