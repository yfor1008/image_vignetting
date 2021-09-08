close all; clear; clc;

%% 主测试程序


fig = figure('NumberTitle', 'off', 'Name', '标题');
x = normrnd(30, 5, [500, 500]);
y = normrnd(400, 5, [500, 500]);
% x = round(x); 这里不能取整

scaler = 1:15;
for s = scaler
    x1 = round(cat(2, x * s, y));
    [x_hist, bins] = histcounts(x1, 'BinMethod', 'integers');
    bins = round(bins);
    bins = bins(1:end-1);
    bar(bins, x_hist, 'FaceColor', 'b', 'EdgeColor', 'b', 'BarWidth', 1.0)
    xlim([0, 500])
    ylim([0, 20000]);
    set(gcf, 'color', 'white');
    set(gca, 'color', 'white');
    set(gca, 'FontName', 'Helvetica');
    set(gca, 'FontSize', 13);
    set(gca, 'linewidth', 1.3);
    
    set(gcf, 'color', 'white');
    set(gca, 'color', 'white');
    set(gca, 'FontName', 'Helvetica');
    set(gca, 'FontSize', 13);
    set(gca, 'linewidth', 1.3);
    E = entropy(x_hist);
    test = 0;
end

