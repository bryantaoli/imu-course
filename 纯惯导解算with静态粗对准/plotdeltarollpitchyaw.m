subplot(3,1,1)
plot(t,deltarollpitchyaw(:,1),'r');
title('����ǲ���ʱ������ͼ');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,2)
plot(t,deltarollpitchyaw(:,2),'g');
title('�����ǲ���ʱ������ͼ');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-6:3:6]) %�ı�x����������ʾ ������Ϊ1
subplot(3,1,3)
plot(t,deltarollpitchyaw(:,3),'b');
title('����ǲ���ʱ������ͼ');
xlabel('s');
ylabel('deg');
%set(gca,'YTick',[-180:60:180]) %�ı�x����������ʾ ������Ϊ30