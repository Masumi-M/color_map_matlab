close all;
clear;
clc;

% === Set Parameter ===
titleName = "Amazon";
colorGradStep = 5;
custom_rgb = {
    [255 153 0]
    [1 1 1]
    };

addpath("../");
create_color_map(titleName, colorGradStep, custom_rgb);
saveas(gcf, titleName+".png");