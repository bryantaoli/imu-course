function [ C ] = EulerToDCM( Euler )
%EULERTODCM Summary of this function goes here
%   Detailed explanation goes here
%这里欧拉角输入的是弧度
phi=Euler(1,1);
theta=Euler(2,1);
psi=Euler(3,1);
C(1,1)=cos(theta)*cos(psi);
C(1,2)=-cos(phi)*sin(psi)+sin(phi)*sin(theta)*cos(psi);
C(1,3)=sin(phi)*sin(psi)+cos(phi)*sin(theta)*cos(psi);
C(2,1)=cos(theta)*sin(psi);
C(2,2)=cos(phi)*cos(psi)+sin(phi)*sin(theta)*sin(psi);
C(2,3)=-sin(phi)*cos(psi)+cos(phi)*sin(theta)*sin(psi);
C(3,1)=-sin(theta);
C(3,2)=sin(phi)*cos(theta);
C(3,3)=cos(phi)*cos(theta);
end

