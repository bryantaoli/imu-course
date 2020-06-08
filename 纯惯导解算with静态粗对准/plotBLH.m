subplot(3,1,1)
plot(t,BLH(:,1),'r');
title('初始姿态由静态粗对准提供的纬度时间序列图');
xlabel('s');
ylabel('deg');
subplot(3,1,2)
plot(t,BLH(:,2),'g');
title('初始姿态由静态粗对准提供的经度时间序列图');
xlabel('s');
ylabel('deg');
subplot(3,1,3)
plot(t,BLH(:,3),'b');
title('初始姿态由静态粗对准提供的高程时间序列图');
xlabel('s');
ylabel('m');