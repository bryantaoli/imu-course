subplot(3,1,1)
plot(t,deltarollpitchyaw(:,1),'r');
title('横滚角差异时间序列图');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,2)
plot(t,deltarollpitchyaw(:,2),'g');
title('俯仰角差异时间序列图');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %改变x轴坐标间隔显示 这里间隔为1
subplot(3,1,3)
plot(t,deltarollpitchyaw(:,3),'b');
title('航向角差异时间序列图');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-180:60:180]) %改变x轴坐标间隔显示 这里间隔为30