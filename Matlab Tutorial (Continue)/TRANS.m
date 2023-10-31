function Matrix = TRANS(x,y,z)

    Matrix = eye(4);

    Matrix(1,4) = x;
    Matrix(2,4) = y;
    Matrix(3,4) = z;
end

%Let's give arbitrary values!
%x=6;
%y=2;
%z=-3;
%Matrix = TRANS(x,y,z);
%disp(Matrix)