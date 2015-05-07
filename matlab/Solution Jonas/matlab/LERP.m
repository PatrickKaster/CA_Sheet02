function [ out ] = LERP(p,e,t )


% EULER ROTATION: X->Y->Z


out = zeros(numel(t),3);
for i=1:numel(t)
    
    
    e1 = t(i)*e(1);
    e2 = t(i)*e(2);
    e3 = t(i)*e(3);


    Mx = [1,0,0;
          0,cos(e1),-sin(e1);
          0,sin(e1),cos(e1)];

    My= [cos(e2), 0, sin(e2);
          0,1,0;
          -sin(e2),0,cos(e2)];

    Mz =[cos(e3), -sin(e3), 0;
        sin(e3), cos(e3),0;
        0,0,1];

    out(i,:) = Mz*My*Mx*p;
end

out = out';
end