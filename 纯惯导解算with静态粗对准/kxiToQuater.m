function [ q ] = RotationToQuater( kxi )
%ROTATIONTOQUATER Summary of this function goes here
%   Detailed explanation goes here
fanshu=norm(kxi);
q(1,1)=cos(0.5*norm(kxi));
q(2,1)=-sin(0.5*norm(kxi))/(0.5*norm(kxi))*0.5*kxi(1,1);
q(3,1)=-sin(0.5*norm(kxi))/(0.5*norm(kxi))*0.5*kxi(2,1);
q(4,1)=-sin(0.5*norm(kxi))/(0.5*norm(kxi))*0.5*kxi(3,1);
%是不是在q计算以后就直接归一化呢？
end

