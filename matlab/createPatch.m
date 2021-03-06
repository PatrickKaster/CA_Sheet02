function h=createPatch(varargin)
% h=createPatch() return handle to a patch object (arrow) 

%% Vertices for object

if nargin==0
    vertices=[  1    0    0  ;
                1.5 -0.5 -0.2;
                1.5 -0.2 -0.2;
                1.5  0.2 -0.2;
                1.5  0.5 -0.2;
                2   -0.2 -0.2;
                2    0.2 -0.2;
                1    0    0  ;
                1.5 -0.5  0.2;
                1.5 -0.2  0.2;
                1.5  0.2  0.2;
                1.5  0.5  0.2;
                2   -0.2  0.2;
                2    0.2  0.2 ];
else
    vertices=varargin{1};
end

%% Faces for object

faces=[1 2 5; 3 6 4; 6 4 7; 8 9 12; 10 13 11 ;13 14 11; 1 5  8; 5  8 12;
       1 2 9; 9 8 1; 2 3 9; 3 10 9; 11 12 4  ; 4  5 12; 4 7 14; 14 11 4;
       3 6 10; 10 6 13; 6 7 14; 14 13 6];

%% Define colormap   
   
cMap=zeros(14,3);
cMap(1: 7,1)=ones(7,1);
cMap(8:14,2)=ones(7,1);

%% final: create patch, store handle objet h

h=patch('Vertices',vertices,'Faces',faces,'FaceVertexCData',cMap, ...
        'FaceColor','interp','faceAlpha',0.2, ...
        'EdgeColor','interp');

    
%% Some axis properties for nice view:    

axis equal;
axis([-1.7 1.7 -1.7 1.7 -1.7 1.7]);
grid on;
