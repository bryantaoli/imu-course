function [ q ] = EulerToQuater( Euler )
%EULERTOQUATER Summary of this function goes here
%   Detailed explanation goes here
phi=Euler(1,1);%ºá¹ö
theta=Euler(2,1);%¸©Ñö
psi=Euler(3,1);%º½Ïò
q(1,1)=cos(phi/2)*cos(theta/2)*cos(psi/2)+sin(phi/2)*sin(theta/2)*sin(psi/2);
q(2,1)=sin(phi/2)*cos(theta/2)*cos(psi/2)-cos(phi/2)*sin(theta/2)*sin(psi/2);
q(3,1)=cos(phi/2)*sin(theta/2)*cos(psi/2)+sin(phi/2)*cos(theta/2)*sin(psi/2);
q(4,1)=cos(phi/2)*cos(theta/2)*sin(psi/2)-sin(phi/2)*sin(theta/2)*cos(psi/2);
end

