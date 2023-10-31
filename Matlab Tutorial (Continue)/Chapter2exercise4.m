angle_degrees = 45; %choosed any
angle_radians = deg2rad(angle_degrees); 

%2D Matrix
R = [cos(angle_radians) -sin(angle_radians);
     sin(angle_radians) cos(angle_radians)];


v = [1; 0]; %choose any
v_transformed = R * v;
R_inverse = inv(R);

result1 = R_inverse * R;
result2 = R * R_inverse;

det_R = det(R);
det_R_inverse = det(R_inverse);

trplot2(R, 'frame', 'R', 'color', 'b');
axis equal;
title('2D Rotation');

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