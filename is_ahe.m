function [trend, finval] = is_ahe(DAT)

clf;
ema30 = tsmovavg(DAT(:,1).', 'e', 30);
ema100 = tsmovavg(DAT(:,1).', 'e', 100);

if (ema30(600) > ema100(600))
    trend = "up";
else
    trend = "down";
end

finval = mean(DAT(550:600,1));

end