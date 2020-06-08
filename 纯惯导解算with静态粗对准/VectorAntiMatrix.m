function [ M ] = VectorAntiMatrix( v )
%VECTORANTIMATRIX Summary of this function goes here
%   Detailed explanation goes here
M(1,1)=0;
M(1,2)=-v(3,1);
M(1,3)=v(2,1);
M(2,1)=v(3,1);
M(2,2)=0;
M(2,3)=-v(1,1);
M(3,1)=-v(2,1);
M(3,2)=v(1,1);
M(3,3)=0;
end

