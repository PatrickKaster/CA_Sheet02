function [ mat ] = euler2mat( e )

%function converts euler angles to rotation matrix
% Rotation Order: X -> Y -> Z


a = e(1);
mx = [1,0,0;
      0,cos(a),-sin(a);
      0,sin(a),cos(a);];
    
b = e(2);
my = [cos(b),0,sin(b);
      0,1,0;
      -sin(b),0,cos(b);];

c = e(3);
mz = [cos(c),-sin(c),0;
      sin(c),cos(c),0;
      0,0,1;];

mat  = mz*my*mx;
  


end

