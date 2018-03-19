% ELEC 422 - PhysioNet challenge 2009
% Author: Kahlan Gibson
% March 7, 2018

%
% The purpose of this script it to iterate over training data to perform
% data collection
%

% training files
trainfiles = 'trainingdata/*.mat';
% directory list
d = dir(trainfiles);
for i=1:1%length(d) % for each dataset
    load(strcat('trainingdata/',d(i).name);
    % determine if AHE occurs
end
