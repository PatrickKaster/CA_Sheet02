function [ euler ] = quat2euler( q )
%QUAT2EULER Summary of this function goes here
%   Detailed explanation goes here


h = atan2(2*q(3)*q(1)-2*q(2)*q(4),1-2*q(3)*q(3)-2*q(4)*q(4));
a = asin(2*q(2)*q(3) + 2*q(4)*q(1));
b = atan2(2*q(2)*q(1)-2*q(3)*q(4),1-2*q(2)*q(2)-2*q(4)*q(4));
euler = [b;h;a];

end

