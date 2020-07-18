close all;
clear;
clc;

% === Set Parameter ===
titleName = "Microsoft";
colorGradStep = 5;
custom_rgb = {
    [242 80 34]
    [127 186 0]
    [0 164 239]
    [255 185 0]
    [115 115 115]
    };

addpath("../");
create_color_map(titleName, colorGradStep, custom_rgb);
saveas(gcf, titleName+".png");