% ELEC 422 - PhysioNet challenge 2009
% Author: Kahlan Gibson
% March 7, 2018

%
% The purpose of this script it to iterate over training data to perform
% data collection
%

% training files
trainfiles = 'trainingdata/BP_*.mat';
% directory list
d = dir(trainfiles);
% number correct in training
macd = [0,0,0,0];
arima = [0,0,0,0];
for i=1:length(d) % for each dataset
    load(strcat('trainingdata/',d(i).name));
    macdresult = runmacd(DAT);
    arimaresult = runarima(DAT);
    % determine if AHE occurs
    if contains(d(i).name,'H1')
        % AHE = true;
        if macdresult
            macd(1) = macd(1) + 1;
        end
        if arimaresult
            arima(1) = arima(1) + 1;
        end
    elseif contains(d(i).name,'H2')
        %AHE = true;
        if macdresult
            macd(2) = macd(2) + 1;
        end
        if arimaresult
            arima(2) = arima(2) + 1;
        end
    elseif contains(d(i).name,'C1')
        %AHE = false;
        if ~macdresult
            macd(3) = macd(3) + 1;
        end
        if ~arimaresult
            arima(3) = arima(3) + 1;
        end
    elseif contains(d(i).name,'C2')
        %AHE = false;
        if ~macdresult
            macd(4) = macd(4) + 1;
        end
        if ~arimaresult
            arima(4) = arima(4) + 1;
        end
    end
end
type = ["H1","H2","C1","C2"];
disp("% accuracy on training data sets");
for i=1:4
    disp(type(i));
    disp("MACD");
    display(macd(i)/15);
    disp("ARIMA");
    display(arima(i)/15);
end

% % testing files
% disp("SCORE A");
% testfiles = 'testingdata/BP_A1_*.mat';
% % % directory list
% d = dir(testfiles);
% macdcorrect = 0;
% arimacorrect = 0;
% A = [true, true, false, true, false, false, false, false, true, true];
% for i=1:length(d)
%     load(strcat('testingdata/',d(i).name));
%     macdresult = runmacd(DAT);
%     arimaresult = runarima(DAT);
%     C = textscan(d(i).name,'BP_A1_%d.mat');
%     if macdresult == A(C{1})
%         macdcorrect = macdcorrect + 1;
%     end
%     if arimaresult == A(C{1})
%         arimacorrect = arimacorrect + 1;
%     end
% end
% X = ['MACD ',num2str(macdcorrect),'/10'];
% disp(X);
% X = ['ARIMA ',num2str(arimacorrect),'/10'];
% disp(X);

% disp("SCORE B");
% testfiles = 'testingdata/BP_B1_*.mat';
% % % directory list
% d = dir(testfiles);
% macdcorrect = 0;
% arimacorrect = 0;
% B = [false, true, true, false, false, false, true, false, true, false, false, false, false, true, false, false, true, true, false, false, false, true, true, true, true, false, false, false, false, false, false, false, false, true, false, false, false, true, true, false];
% for i=1:length(d)
%     load(strcat('testingdata/',d(i).name));
%     macdresult = runmacd(DAT);
%     arimaresult = runarima(DAT);
%     C = textscan(d(i).name,'BP_B1_%d.mat');
%     if macdresult == B(C{1})
%         macdcorrect = macdcorrect + 1;
%     end
%     if arimaresult == B(C{1})
%         arimacorrect = arimacorrect + 1;
%     end
% end
% X = ['MACD ',num2str(macdcorrect),'/40'];
% disp(X);
% X = ['ARIMA ',num2str(arimacorrect),'/40'];
% disp(X);


