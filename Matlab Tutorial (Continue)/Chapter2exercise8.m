axis_of_rotation = [2, 3, 4];
angle = 0.5; %radyan

axis_of_rotation = axis_of_rotation / norm(axis_of_rotation);

%Rodrigues Form.
I=eye(3);
K = [0, -axis_of_rotation(3), axis_of_rotation(2);
     axis_of_rotation(3), 0, -axis_of_rotation(1);
     -axis_of_rotation(2), axis_of_rotation(1), 0];

R1 = I + sin(angle) * K + (1 - cos(angle)) * (K * K);


%angvec2tr
R2 = angvec2tr(angle, axis_of_rotation);
disp("Rodrigues Form:")
disp(R1);
disp("Angvec2tr:")
disp(R2);

%quartion
q = [cos(angle/2), sin(angle/2) * axis_of_rotation];
disp("quartion:")
disp(q);

