function Theta = ROTZ(theta_deg)

    theta_rad = deg2rad(theta_deg);

    R_z = [cos(theta_rad), -sin(theta_rad), 0, 0;
           sin(theta_rad), cos(theta_rad), 0, 0;
           0, 0, 1, 0;
           0, 0, 0, 1];

    Theta = R_z;
end

%theta_25 = 25;
%T_25 = ROTZ(theta_25);
%theta_45 = 45;
%T_45 = ROTZ(theta_45);
%theta_65 = 65;
%T_65 = ROTZ(theta_65);
%theta_82 = 82;
%T_82 = ROTZ(theta_82);

%disp('Rotation matrix for 25 degrees:');
%disp(T_25);

%disp('Rotation matrix for 45 degrees:');
%disp(T_45);

%disp('Rotation matrix for 65 degrees:');
%disp(T_65);

%disp('Rotation matrix for 82 degrees:');
%disp(T_82);