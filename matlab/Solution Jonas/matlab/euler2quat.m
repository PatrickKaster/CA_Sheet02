function [ quat ] = euler2quat( e )

%function converts eulerAngles to Quaternions

c1 = cos(e(1)/2);
c2 = cos(e(2)/2);
c3 = cos(e(3)/2);

s1 = sin(e(1)/2);
s2 = sin(e(2)/2);
s3 = sin(e(3)/2);

w = c1*c2*c3 - s1*s2*s3;
x = s1*s2*c3 + c1*c2*s3;
y = s1*c2*c3 + c1*s2*s3;
z = c1*s2*c3 - s1*c2*s3;

quat = [w;y;z;x];

end

