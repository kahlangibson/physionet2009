function [macd,sig,rawdata,t0] = runmacd(DAT)
%RUNMACD Simple script to perform moving average convergence divergence
%   on a given test data set.
%   Input: DAT matrix of arterial blood pressure
%   Output: macd, sig, rawdata, t0 indicator
ema12 = tsmovavg(DAT(:,1).', 'e', 12);
ema26 = tsmovavg(DAT(:,1).', 'e', 26);
macd = ema12-ema26;
sig = tsmovavg(macd(26:660), 'e', 9);
rawdata = DAT(26:660,1).';
t0 = DAT(26:660,3).';
end

