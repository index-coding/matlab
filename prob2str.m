function probstr = prob2str(prob)

% Convert a problem in the form {A1, A2, ... ,An} to a human-readable string
% For example, {[2,3],[3],[1]} generates (1|2,3),(2|3),(3|1)

% Problem to side information graph Gd
  n = length(prob);
  probstr = "(";
  for i = 1:length(prob)
    probstr = probstr + string(i) + "|";
    tmp = prob{i};
    if length(tmp) == 0
      probstr = probstr + "-)";
    else
      for j = 1:length(tmp)-1
        probstr = probstr + string(tmp(j)) + ",";
      end
      probstr = probstr + string(tmp(length(tmp))) + ")";
    end
    if i < length(prob)
        probstr = probstr + ",(";
    end
  end
  
  return
  