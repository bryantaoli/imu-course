%和test.m的区别就是这里把3*6的矩阵展开成了1*18,方便最后协方差计算
clear;
load('AcclZ.mat');
load('AcclX.mat');
load('AcclY.mat');
load('t.mat');

g=9.7936174;

A=[g,-g,0,0,0,0;0,0,g,-g,0,0;0,0,0,0,g,-g;1,1,1,1,1,1];
fz_X_up=mean(AcclZ(186900:232300,1))/0.005;      
fz_X_down=mean(AcclZ(244500:294500,1))/0.005;
fz_Y_up=mean(AcclZ(376300:425100,1))/0.005;
fz_Y_down=mean(AcclZ(296200:358500,1))/0.005;
fz_Z_up=mean(AcclZ(102200:184600,1))/0.005;
fz_Z_down=mean(AcclZ(1:78900,1))/0.005;

fx_X_up=mean(AcclX(186900:232300,1))/0.005;
fx_X_down=mean(AcclX(244500:294500,1))/0.005;
fx_Y_up=mean(AcclX(376300:425100,1))/0.005;
fx_Y_down=mean(AcclX(296200:358500,1))/0.005;
fx_Z_up=mean(AcclX(102200:184600,1))/0.005;
fx_Z_down=mean(AcclX(1:78900,1))/0.005;

fy_X_up=mean(AcclY(186900:232300,1))/0.005;
fy_X_down=mean(AcclY(244500:294500,1))/0.005;
fy_Y_up=mean(AcclY(376500:425100,1))/0.005;
fy_Y_down=mean(AcclY(296200:358500,1))/0.005;
fy_Z_up=mean(AcclY(102200:184600,1))/0.005;
fy_Z_down=mean(AcclY(1:78900,1))/0.005;

L1=[fx_X_up;fy_X_up;fz_X_up;fx_X_down;fy_X_down;fz_X_down;fx_Y_up;fy_Y_up;fz_Y_up;fx_Y_down;fy_Y_down;fz_Y_down;fx_Z_up;fy_Z_up;fz_Z_up;fx_Z_down;fy_Z_down;fz_Z_down;];

A1=zeros(18,12);

D=zeros(18,18);

varfz_X_up=var(AcclZ(186900:232300,1)/0.005);
varfz_X_down=var(AcclZ(244500:294500,1)/0.005);
varfz_Y_up=var(AcclZ(376300:425100,1)/0.005);
varfz_Y_down=var(AcclZ(296200:358500,1)/0.005);
varfz_Z_up=var(AcclZ(102200:184600,1)/0.005);
varfz_Z_down=var(AcclZ(1:78900,1)/0.005);%78900由101000改过来

varfx_X_up=var(AcclX(186900:232300,1)/0.005);
varfx_X_down=var(AcclX(244500:294500,1)/0.005);
varfx_Y_up=var(AcclX(376300:425100,1)/0.005);
varfx_Y_down=var(AcclX(296200:358500,1)/0.005);
varfx_Z_up=var(AcclX(102200:184600,1)/0.005);
varfx_Z_down=var(AcclX(1:78900,1)/0.005);

varfy_X_up=var(AcclY(186900:232300,1)/0.005);%232300由243400改来
varfy_X_down=var(AcclY(244500:294500,1)/0.005);
varfy_Y_up=var(AcclY(376500:425100,1)/0.005);
varfy_Y_down=var(AcclY(296200:358500,1)/0.005);
varfy_Z_up=var(AcclY(102200:184600,1)/0.005);
varfy_Z_down=var(AcclY(1:78900,1)/0.005);

D(1,1)=varfx_X_up;
D(2,2)=varfy_X_up;
D(3,3)=varfz_X_up;
D(4,4)=varfx_X_down;
D(5,5)=varfy_X_down;
D(6,6)=varfz_X_down;
D(7,7)=varfx_Y_up;
D(8,8)=varfy_Y_up;
D(9,9)=varfz_Y_up;
D(10,10)=varfx_Y_down;
D(11,11)=varfy_Y_down;
D(12,12)=varfz_Y_down;
D(13,13)=varfx_Z_up;
D(14,14)=varfy_Z_up;
D(15,15)=varfz_Z_up;
D(16,16)=varfx_Z_down;
D(17,17)=varfy_Z_down;
D(18,18)=varfz_Z_down;

A1(1,1)=g;
A1(1,4)=1;
A1(2,5)=g;
A1(2,8)=1;
A1(3,9)=g;
A1(3,12)=1;

A1(4,1)=-g;
A1(4,4)=1;
A1(5,5)=-g;
A1(5,8)=1;
A1(6,9)=-g;
A1(6,12)=1;

A1(7,2)=g;
A1(7,4)=1;
A1(8,6)=g;
A1(8,8)=1;
A1(9,10)=g;
A1(9,12)=1;

A1(10,2)=-g;
A1(10,4)=1;
A1(11,6)=-g;
A1(11,8)=1;
A1(12,10)=-g;
A1(12,12)=1;

A1(13,3)=g;
A1(13,4)=1;
A1(14,7)=g;
A1(14,8)=1;
A1(15,11)=g;
A1(15,12)=1;

A1(16,3)=-g;
A1(16,4)=1;
A1(17,7)=-g;
A1(17,8)=1;
A1(18,11)=-g;
A1(18,12)=1;

AA=A1'*A1;
M1=inv(A1'*A1)*A1'*L1;
M2=inv(A1'*inv(D)*A1)*A1'*inv(D)*L1;

V1=L1-A1*M1;
var1=V1'*V1/(18-12);
V2=L1-A1*M2;
var2=V2'*inv(D)*V2/(18-12);

varM1=var1*inv(A1'*A1);
varM2=var2*inv(A1'*inv(D)*A1); 