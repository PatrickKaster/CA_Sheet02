clear all;

deg2rad = @(deg) deg * (pi/180);
rotx = @(deg) [1, 0, 0; 0, cos(deg2rad(deg)), -sin(deg2rad(deg)); 0, sin(deg2rad(deg)), cos(deg2rad(deg))];
roty = @(deg) [cos(deg2rad(deg)), 0, sin(deg2rad(deg)); 0, 1, 0; -sin(deg2rad(deg)), 0 , cos(deg2rad(deg))];
rotz = @(deg) [cos(deg2rad(deg)), -sin(deg2rad(deg)), 0; sin(deg2rad(deg)), cos(deg2rad(deg)), 0; 0, 0, 1];

% rotation matrix 90 deg x-axis
rotx90 = rotx(90);
% rotation matrix 90 deg x-axis
rotx45 = rotx(45);

% quaternion 90 deg x-axis
qx90 = mat2quat(rotx90);

% quaternion 45 deg x-axis
qx45 = mat2quat(rotx45);

hsphere = createSphere;
hpatch1 = createPatch;

% get vertices from object and embed as pure quads
verticespatch1 = get(hpatch1,'Vertices');
quatspatch1 = vec2quat(verticespatch1);

% do quaternion rotation q'*quatsvert*q

% get vertices back and set them
verticespatch1 = quat2vec(...);
set(hpatch1, 'Vertices', verticespatch1);

% compute interp. between qx90, qx45 by slerp and do the same again...
