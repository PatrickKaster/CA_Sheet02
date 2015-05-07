function [ out ] = qPow( q,t )
%QPOW Summary of this function goes here
%   Detailed explanation goes here


out = [t*q(1);t*q(2);t*q(3);t*q(4)];

%angles
 a1 = acos(q(1));
 a2 = asin(q(2));
 a3 = asin(q(3));
 a4 = asin(q(4));
 
 
% out = norm(q)^t(:) * [cos(t*a1);sin(t*a2);sin(t*a3);sin(t*a4)];
 


end

