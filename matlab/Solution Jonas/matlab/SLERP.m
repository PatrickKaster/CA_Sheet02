function [ out ] = SLERP( q1,q2,t )




p1 = q1(2:4);
p2 = q2(2:4);

omega = acos (p1'*p2);



out = (q1*sin((1-t)*omega)+q2*sin(t*omega))/sin(omega);


%out = qMult(q1,qPow(qMult(q2,qCon(q1)),t));





end

