Alldata=load('Data1.txt');
Gx=Alldata(:,2)/0.005;
Gy=Alldata(:,3)/0.005;
Gz=Alldata(:,4)/0.005;
Ax=Alldata(:,5)/0.005;
Ay=Alldata(:,6)/0.005;
Az=Alldata(:,7)/0.005;

we=7.2921151467E-5;%地球自转角速度rad/s
b=23.1373950708/180*pi;
h=2.175 ;
g=978.032*(1+0.005302*sin(b)*sin(b)-0.0000058*sin(2*b)*sin(2*b))*1e-2-(0.3086*h-0.72*1e-7*h*h)*1e-5;
rn=[0;0;g];
we2i2n=[we*cos(b);0;-we*sin(b)];
vn=cross(rn,we2i2n);

rb=[-mean(Ax);-mean(Ay);-mean(Az)];
we2i2b=[mean(Gx);mean(Gy);mean(Gz)];
vb=cross(rb,we2i2b);

Cn2b=[rb,we2i2b,vb]*inv([rn,we2i2n,vn]);
Cb2n=Cn2b';
%Cb2n=[rn,we2i2n,vn]*inv([rb,we2i2b,vb]);
alpha_rad=atan2(Cb2n(2,1),Cb2n(1,1));
alpha_deg=alpha_rad*180/pi;
alpha_deg
theta_rad=atan2(-Cb2n(3,1),sqrt(Cb2n(3,2)^2+Cb2n(3,3)^2));
theta_deg=theta_rad*180/pi;
theta_deg
phi_rad=atan2(Cb2n(3,2),Cb2n(3,3));
phi_deg=phi_rad*180/pi;
phi_deg