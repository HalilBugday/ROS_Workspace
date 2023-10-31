angle_degrees = 53; %choose any
angle_radians = deg2rad(angle_degrees);

%3D Matrix
R = [cos(angle_radians) -sin(angle_radians) 0;
     sin(angle_radians) cos(angle_radians) 0;
     0 0 1];

v = [1; 0; 0]; %choose any
v_transformed = R * v;

R_inverse = inv(R);
result1 = R_inverse * R;
result2 = R * R_inverse;

det_R = det(R);
det_R_inverse = det(R_inverse);

trplot(R, 'frame', 'R', 'color', 'b', 'length', 1.0);
axis equal;
title('3D Rotation');

disp('Original Matrix (R):');
disp(R);
disp('Transformed Vector (v_transformed):');
disp(v_transformed);
disp('Inverted Matrix (R_inverse):');
disp(R_inverse);
disp('Result 1 (R_inverse * R):');
disp(result1);
disp('Result 2 (R * R_inverse):');
disp(result2);
disp('Determinant of R:');
disp(det_R);
disp('Determinant of R_inverse:');
disp(det_R_inverse);