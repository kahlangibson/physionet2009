function a = plotandcheck(DAT)
%PLOTANDCHECK Creates plot of data, used to evaluate different methods
clf;
plot(DAT(:,1)', 'black');
hold on;
plot(DAT(:,2)', 'red');
hold on;
plot(DAT(:,3)', 'blue');
hold off;
a = DAT(2:600);
end

