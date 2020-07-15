close all;
clear;
clc;

% === Set Parameter ===
titleName = "Facebook";
colorGradStep = 5;
custom_rgb = {
    [66 103 178]
    [137 143 156]
    [1 1 1]
    };

addpath("../");
create_color_map(titleName, colorGradStep, custom_rgb);
saveas(gcf, titleName+".png");