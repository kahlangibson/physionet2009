function plotmacd(DAT)
%PLOTMACD Creates macd plot
clf;
ema12 = tsmovavg(DAT(:,1).', 'e', 12);
ema26 = tsmovavg(DAT(:,1).', 'e', 26);
macd = ema12-ema26;
sig = tsmovavg(macd(26:660), 'e', 9);
yyaxis left;
plot(macd(26:660),'r');
hold on;
plot(sig, 'b');
yyaxis right;
plot(DAT(26:660,1).', 'black');
plot(DAT(26:660,3).', 'black');
hold off;
end

