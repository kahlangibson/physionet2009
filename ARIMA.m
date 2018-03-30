
% training files
trainfiles = 'trainingdata/BP_*.mat';
% directory list
d = dir(trainfiles);
% number correct in training
% H1 3,7
% H2 2

h11=load('trainingdata/BP_H2_2.mat');
h11 = h11.DAT;
% 212 110 111 210 211
EstMdl = estimate(arima(2,2,2),h11(1:600,2));
rng default;
Y = simulate(EstMdl,60,'NumPaths',1000,'Y0',h11(1:600,2));
lower = prctile(Y,2.5,2);
upper = prctile(Y,97.5,2);
mn = mean(Y,2);
n = 600;
figure
plot(h11(:,2),'Color',[.7,.7,.7])
hold on
plot(h11(:,3))
h1 = plot(n+1:n+60,lower,'r:','LineWidth',2);
plot(n+1:n+60,upper,'r:','LineWidth',2)
h2 = plot(n+1:n+60,mn,'k','LineWidth',2);

legend([h1 h2],'95% Interval','Simulation Mean','Location','NorthWest')
title('ABP Trend Forecast');
hold off

% number correct in training
h11=load('trainingdata/BP_C1_1.mat');
h11 = h11.DAT;
% 212 110 111 210 211
EstMdl = estimate(arima(2,2,2),h11(1:600,2));
rng default;
Y = simulate(EstMdl,60,'NumPaths',1000,'Y0',h11(1:600,2));
lower = prctile(Y,2.5,2);
upper = prctile(Y,97.5,2);
mn = mean(Y,2);
n = 600;
figure
plot(h11(:,2),'Color',[.7,.7,.7])
hold on
plot(h11(:,3))
h1 = plot(n+1:n+60,lower,'r:','LineWidth',2);
plot(n+1:n+60,upper,'r:','LineWidth',2)
h2 = plot(n+1:n+60,mn,'k','LineWidth',2);

legend([h1 h2],'95% Interval','Simulation Mean','Location','NorthWest')
title('ABP Trend Forecast');
hold off
    
