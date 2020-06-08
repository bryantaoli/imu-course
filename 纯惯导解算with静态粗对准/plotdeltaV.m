subplot(3,1,1)
plot(t,deltaV(:,1),'r');
title('北向速度偏差时间序列图');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,2)
plot(t,deltaV(:,2),'g');
title('东向速度偏差时间序列图');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,3)
plot(t,deltaV(:,3),'b');
title('垂向速度偏差时间序列图');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-180:60:180]) %改变x轴坐标间隔显示 这里间隔为30