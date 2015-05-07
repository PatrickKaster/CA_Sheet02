function [ euler ] = mat2euler( m )
%MAT2EULER Summary of this function goes here
%   Detailed explanation goes here


h = atan2(-m(3,1),m(1,1));
a = asin(m(2,1));
b = atan2(-m(2,3),m(2,2));

euler = [b;h;a];

end

