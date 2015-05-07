clc
clear all;
close all;
hold on;
axis equal;

e = [pi/2,pi/4,pi/2];


h = createPatch;
m = createPatch;
s = createSphere;

vertices = get(h,'Vertices')';
pVertices = get(m,'Vertices')';

t = 0: 0.01 :1;

p1 = vertices(:,1);

estep = LERP(p1,e,t);

mat = euler2mat(e);
vert = mat*pVertices;

set(m,'Vertices',vert');

scatter3(estep(1,:),estep(2,:),estep(3,:),'squareg');