subplot(3,1,1)
plot(t,deltaV(:,1),'r');
title('�����ٶ�ƫ��ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,2)
plot(t,deltaV(:,2),'g');
title('�����ٶ�ƫ��ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,3)
plot(t,deltaV(:,3),'b');
title('�����ٶ�ƫ��ʱ������ͼ');
xlabel('s');
ylabel('m/s');
%set(gca,'YTick',[-180:60:180]) %�ı�x����������ʾ ������Ϊ30