function E = entropy(hist)
% entropy - 计算熵
%
% input:
%   hist: N*1, 直方图数据
% output:
%   - ent: float
%

p = hist;
p(p==0) = [];
p = p ./ sum(p);
E = -sum(p.*log2(p));

end