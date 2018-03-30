function c = runarima(DAT)
%RUNARIMA Simple script to perform monte carlo simulation on autoregressive
%   integrated moving average time series model
%   Input: DAT matrix of arterial blood pressure
EstMdl = estimate(arima(2,2,2),DAT(1:600,2));
rng default;
Y = simulate(EstMdl,60,'NumPaths',1000,'Y0',DAT(1:600,2));
lower = prctile(Y,2.5,2);
upper = prctile(Y,97.5,2);
mn = mean(Y,2);

c = false;
for i=1:60
    if lower(i) < 60
        c = true;
    end
end

% uncomment to create figure
% n = 600;
% figure
% plot(h11(:,2),'Color',[.7,.7,.7])
% hold on
% plot(h11(:,3))
% h1 = plot(n+1:n+60,lower,'r:','LineWidth',2);
% plot(n+1:n+60,upper,'r:','LineWidth',2)
% h2 = plot(n+1:n+60,mn,'k','LineWidth',2);
% legend([h1 h2],'95% Interval','Simulation Mean','Location','NorthWest')
% title('ABP Trend Forecast');
% hold off
end

