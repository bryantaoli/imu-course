subplot(3,1,1)
plot(t,VnVeVd(:,1),'r');
title('�����ٶ�ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,2)
plot(t,VnVeVd(:,2),'g');
title('�����ٶ�ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,3)
plot(t,VnVeVd(:,3),'b');
title('�����ٶ�ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-180:60:180]) %�ı�x����������ʾ ������Ϊ30