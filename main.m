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
for i=1:length(d) % for each dataset
    load(strcat('trainingdata/',d(i).name));
    macdresult = runmacd(DAT);
    % determine if AHE occurs
    if contains(d(i).name,'H1')
        % AHE = true;
        if macdresult
            macd(1) = macd(1) + 1;
        end
    elseif contains(d(i).name,'H2')
        %AHE = true;
        if macdresult
            macd(2) = macd(2) + 1;
        end
    elseif contains(d(i).name,'C1')
        %AHE = false;
        if ~macdresult
            macd(3) = macd(3) + 1;
        end
    elseif contains(d(i).name,'C2')
        %AHE = false;
        if ~macdresult
            macd(4) = macd(4) + 1;
        end
    end
end
type = ["H1","H2","C1","C2"];
disp("% accuracy on training data sets");
for i=1:4
    disp(type(i));
    disp("MACD");
    display(macd(i)/15);
end

% % testing files
% testfiles = 'testingdata/BP_*.mat';
% % directory list
% d = dir(testfiles);
% macdcorrect = 0;
% A = [true, true, false, true, false, false, false, false, true, true];
% B = [false, true, true, false, false, false, true, false, true, false, false, false, false, true, false, false, true, true, false, false, false, true, true, true, true, false, false, false, false, false, false, false, false, true, false, false, false, true, true, false];
% 
% for i=1:length(d) % for each dataset
%     load(strcat('testingdata/',d(i).name));
%     macdresult = runmacd(DAT);
%     if macdresult
%         disp([d(i).name,'  H']);
%     else
%         
%         disp([d(i).name,'  C']);
%     end
% end

