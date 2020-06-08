function [ pq ] = QuaterMulti( p,q )
%QUATERMULTI Summary of this function goes here
%   Detailed explanation goes here
    p0=p(1,1);p1=p(2,1);p2=p(3,1);p3=p(4,1);
    P=[p0,-p1,-p2,-p3;p1,p0,-p3,p2;p2,p3,p0,-p1;p3,-p2,p1,p0];
    pq=P*q;
end

