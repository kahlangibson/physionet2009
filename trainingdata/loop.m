DirList = dir(fullfile('BP_*.mat'));
Data = cell(1, length(DirList));
x = [];
for k = 1:length(DirList)
  [a,b] = is_ahe(fullfile(DirList(k).name));
  if (a == "down" && b < 80)
      c = "IS_AHE";
  elseif (b<70)
      c = "IS_AHE";
  else
      c = "NOT_AHE";
  end
  x =[x;[DirList(k).name,a,b,c]];
end