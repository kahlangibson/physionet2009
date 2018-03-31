
% training files
trainfiles = 'trainingdata/BP_*.mat';
% directory list
d = dir(trainfiles);
% number correct in training
% H1 3,7
% H2 2

h11=load('trainingdata/BP_C1_1.mat');
h11 = h11.DAT;
% 212 110 111 210 211
EstMdl = estimate(arima(2,2,2),h11(1:600,2));
rng default;
Y = simulate(EstMdl,60,'NumPaths',1000,'Y0',h11(1:600,2));
lower = prctile(Y,9,2);
upper = prctile(Y,91,2);
mn = mean(Y,2);
n = 600;
figure
%%%%%%
% [y,ym] = forecast(EstMdl, 60, 'Y0',h11(1:600,2));
% plot(h11(:,2),'Color',[.7,.7,.7])
% hold on
% plot(h11(:,3),'Color',[.2,.2,.2])
% plot(601:660, y, 'LineWidth',2)
%%%%%%
plot(h11(:,2),'Color',[.7,.7,.7],'LineWidth',3)
hold on
plot(h11(:,3),'Color',[.2,.2,.2],'LineWidth',3)
h1 = plot(n+1:n+60,lower,'r:','LineWidth',3);
plot(n+1:n+60,upper,'r:','LineWidth',3)
h2 = plot(n+1:n+60,mn,'k','LineWidth',3);
legend([h1 h2],'82% Interval','Simulation Mean','Location','SouthWest')
title('ABP Trend Forecast');
set(gca,'FontSize',16)
set(gcf,'color','w');
hold off
% 
% % number correct in training
% h11=load('trainingdata/BP_C1_1.mat');
% h11 = h11.DAT;
% % 212 110 111 210 211
% EstMdl = estimate(arima(2,2,2),h11(1:600,2));
% rng default;
% Y = simulate(EstMdl,60,'NumPaths',1000,'Y0',h11(1:600,2));
% lower = prctile(Y,2.5,2);
% upper = prctile(Y,97.5,2);
% mn = mean(Y,2);
% n = 600;
% figure
% plot(h11(:,2),'Color',[.7,.7,.7])
% hold on
% plot(h11(:,3))
% h1 = plot(n+1:n+60,lower,'r:','LineWidth',2);
% plot(n+1:n+60,upper,'r:','LineWidth',2)
% h2 = plot(n+1:n+60,mn,'k','LineWidth',2);
% 
% legend([h1 h2],'95% Interval','Simulation Mean','Location','NorthWest')
% title('ABP Trend Forecast');
% hold off
%     
