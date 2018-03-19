function c = runmacd(DAT)
%RUNMACD Simple script to perform moving average convergence divergence
%   on a given test data set.
%   Input: DAT matrix of arterial blood pressure
[a,b] = is_ahe(DAT);
if (a == "down" && b < 80) 
    c = true;
elseif (b<70)
    c = true;
else
    c = false;
end
end

