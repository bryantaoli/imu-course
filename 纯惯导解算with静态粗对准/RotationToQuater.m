function [ q ] = RotationToQuater( phi )
%ROTATIONTOQUATER Summary of this function goes here
%   Detailed explanation goes here
fanshu=norm(0.5*phi);
q(1,1)=cos(norm(0.5*phi));
q(2,1)=sin(norm(0.5*phi))/(norm(0.5*phi))*0.5*phi(1,1);
q(3,1)=sin(norm(0.5*phi))/(norm(0.5*phi))*0.5*phi(2,1);
q(4,1)=sin(norm(0.5*phi))/(norm(0.5*phi))*0.5*phi(3,1);
%是不是在q计算以后就直接归一化呢？
end

