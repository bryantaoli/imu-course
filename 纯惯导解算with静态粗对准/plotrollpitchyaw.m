subplot(3,1,1)
plot(t,rollpitchyaw(:,1),'r');
title('�����ʱ������ͼ');
xlabel('s');
ylabel('deg');
set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,2)
plot(t,rollpitchyaw(:,2),'g');
title('������ʱ������ͼ');
xlabel('s');
ylabel('deg');
set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,3)
plot(t,rollpitchyaw(:,3),'b');
title('�����ʱ������ͼ');
xlabel('s');
ylabel('deg');
set(gca,'YTick',[-180:60:180]) %�ı�x����������ʾ ������Ϊ30