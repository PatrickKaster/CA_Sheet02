function [ pOut ] = qRot( p,q )
%QROT Summary of this function goes here
%   Detailed explanation goes here


pOut = qMult(q,qMult(p,qCon(q)));


end

