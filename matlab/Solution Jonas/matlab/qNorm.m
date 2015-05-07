function [ out ] = qNorm( q )
%QNORM Summary of this function goes here
%   Detailed explanation goes here


out = sqrt(q(1,:).*q(1,:)+q(2,:).*q(2,:)+q(3,:).*q(3,:)+q(4,:).*q(4,:));

end

% out = sqrt(q(1)^2+q(2)^2+q(3)^2+q(4)^2);