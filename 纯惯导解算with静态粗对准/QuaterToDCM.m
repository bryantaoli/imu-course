function [ C ] = QuaterToDCM( q )
%QUATERTODCM Summary of this function goes here
%   Detailed explanation goes here
    q0=q(1,1);q1=q(2,1);q2=q(3,1);q3=q(4,1);
    C(1,1)=q0^2+q1^2-q2^2-q3^2;
    C(1,2)=2*(q1*q2-q0*q3);
    C(1,3)=2*(q1*q3+q0*q2);
    C(2,1)=2*(q1*q2+q0*q3);
    C(2,2)=q0^2-q1^2+q2^2-q3^2;
    C(2,3)=2*(q2*q3-q0*q1);
    C(3,1)=2*(q1*q3-q0*q2);
    C(3,2)=2*(q2*q3+q0*q1);
    C(3,3)=q0^2-q1^2-q2^2+q3^2;
end

