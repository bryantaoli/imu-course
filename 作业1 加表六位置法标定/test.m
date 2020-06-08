load('AcclZ.mat');
load('AcclX.mat');
load('AcclY.mat');
load('t.mat');
%plot((t-108638.987500000)/60,AcclZ/0.005,'-b',(t-108638.987500000)/60,AcclX/0.005,'-r',(t-108638.987500000)/60,AcclY/0.005,'-g');
g=9.7936174;
A=[g,-g,0,0,0,0;0,0,g,-g,0,0;0,0,0,0,g,-g;1,1,1,1,1,1];
fz_X_up=mean(AcclZ(186900:232300,1))/0.005;      
fz_X_down=mean(AcclZ(244500:294500,1))/0.005;
fz_Y_up=mean(AcclZ(376300:425100,1))/0.005;
fz_Y_down=mean(AcclZ(296200:358500,1))/0.005;
fz_Z_up=mean(AcclZ(102200:184600,1))/0.005;
fz_Z_down=mean(AcclZ(1:101000,1))/0.005;

fx_X_up=mean(AcclX(186900:232300,1))/0.005;
fx_X_down=mean(AcclX(244500:294500,1))/0.005;
fx_Y_up=mean(AcclX(376300:425100,1))/0.005;
fx_Y_down=mean(AcclX(296200:358500,1))/0.005;
fx_Z_up=mean(AcclX(102200:184600,1))/0.005;
fx_Z_down=mean(AcclX(1:78900,1))/0.005;

fy_X_up=mean(AcclY(186900:243400,1))/0.005;
fy_X_down=mean(AcclY(244500:294500,1))/0.005;
fy_Y_up=mean(AcclY(376500:425100,1))/0.005;
fy_Y_down=mean(AcclY(296200:358500,1))/0.005;
fy_Z_up=mean(AcclY(102200:184600,1))/0.005;
fy_Z_down=mean(AcclY(1:78900,1))/0.005;



L=[fx_X_up,fx_X_down,fx_Y_up,fx_Y_down,fx_Z_up,fx_Z_down;fy_X_up,fy_X_down,fy_Y_up,fy_Y_down,fy_Z_up,fy_Z_down;fz_X_up,fz_X_down,fz_Y_up,fz_Y_down,fz_Z_up,fz_Z_down;];
M=L*A'*inv(A*A');

V=L-M*A;
var=V'*V/6;
varM=var*inv(A'*A);