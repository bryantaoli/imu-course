subplot(3,1,1)
plot(t,Untitled(:,1),'r');
title('纬度差异时间序列图');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,2)
plot(t,Untitled(:,2),'g');
title('经度差异时间序列图');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,3)
plot(t,Untitled(:,3),'b');
title('高程差异时间序列图');
xlabel('s');
ylabel('m');
%set(gca,'YTick',[-180:60:180]) %改变x轴坐标间隔显示 这里间隔为30