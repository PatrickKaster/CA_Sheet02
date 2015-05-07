function [ p2 ] = showCurve( p1,q )
%SHOWCURVE Summary of this function goes here
%   Detailed explanation goes here
hold off;
createSphere;
hold on;

t = 0:0.025:1;
p2 = qRot(p1,q);
path = SLERP(p1,p2,t);
scatter3(path(2,:),path(3,:),path(4,:));
end

