clc
clear all;
close all;
hold on;
axis equal;

r = [1,3,4];
angle = pi/4;

if angle == pi/2
    angle = pi/2 -0.01;
end

r = r/norm(r);
q = [cos(angle);r(1)*sin(angle);r(2)*sin(angle);r(3)*sin(angle)];


%create Scenery
h = createPatch;
m = createPatch;
s = createSphere;


vertices = get(h,'Vertices')';
qVertices = [zeros(1,14);vertices];

newVertices = qMult(q,qMult(qVertices,qCon(q)));
set(m,'Vertices',newVertices(2:4,:)');

t = 0: 0.02 :1;

p1 = qVertices(:,1);
p2 = newVertices(:,1);
qstep = SLERP(p1,p2,t);




scatter3(qstep(2,:),qstep(3,:),qstep(4,:),'.r');


