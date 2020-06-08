function [ pqr ] = QuaterMulti3( p,q,r )
%QUATERMULTI2 Summary of this function goes here
%   Detailed explanation goes here
    pq=QuaterMulti(p,q);
    pqr=QuaterMulti(pq,r);
end

