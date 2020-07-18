close all;
clear;
clc;

% === Set Parameter ===
titleName = "Apple";
colorGradStep = 5;
custom_rgb = {
    [1 1 1]
    [85 85 85]
    };

addpath("../");
create_color_map(titleName, colorGradStep, custom_rgb);
saveas(gcf, titleName+".png");