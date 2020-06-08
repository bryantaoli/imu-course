function [ C ] = DCMToRotation( phi )
%DCMTOROTATION Summary of this function goes here
%   Detailed explanation goes here
phi_AntiMatrix=VectorAntiMatrix(phi);
C=eye(3)+sin(norm(phi))/norm(phi)*phi_AntiMatrix+(1-cos(norm(phi)))/(norm(phi)^2)*phi_AntiMatrix*phi_AntiMatrix;

end

