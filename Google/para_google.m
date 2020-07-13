close all;
clear;
clc;

% === Set Parameter ===
titleName = "Google";
colorGradStep = 5;
custom_rgb = {
    [66 133 244]
    [219 68 55]
    [244 180 0]
    [15 157 88]
    };

addpath("../");
create_color_map(titleName, colorGradStep, custom_rgb);
saveas(gcf, titleName+".png");