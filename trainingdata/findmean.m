%Loops through all BP_*.mat files in folder
%and populates a table x with ahe predictions
DirList = dir(fullfile('BP_C1*.mat'));
x = [];
for k = 1:length(DirList)
  Struct = load(fullfile(DirList(k).name));
  DAT = Struct.DAT;
  m = mean(DAT(550:600,1));
  x = [x,m];
end

fin = mean(x);