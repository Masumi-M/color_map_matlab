close all;
clear;
clc;

% === Set Parameter ===
titleName = "Google";
colorGradStep = 15;
custom_rgb = {
    [66 133 244]
    [219 68 55]
    [244 180 0]
    [15 157 88]
    };

% === Create Colormap ===
colorNum = size(custom_rgb,1);
custom_rgb_01 = cell(colorNum,1);
custom_color_grad = cell(colorNum,1);

for i_color = 1:colorNum
    temp_custom_rgb_01 = zeros(colorGradStep,3);
    temp_custom_rgb_01(1,:) = custom_rgb{i_color}./255;
    for i_step = 2:colorGradStep
        temp_custom_rgb_01(i_step,:) = temp_custom_rgb_01(1,:)*i_step;
    end
    temp_custom_rgb_01_rescale = zeros(colorGradStep,3);
    for i_rgb = 1:3
        temp_custom_rgb_01_rescale(:, i_rgb) = rescale(temp_custom_rgb_01(:,i_rgb), temp_custom_rgb_01(1,i_rgb), 1); 
    end
    custom_rgb_01{i_color,1} = temp_custom_rgb_01_rescale;
    temp_color_array = zeros(colorGradStep,3);
    for i_step = 1:colorGradStep
        temp_color_array(i_step,:) = custom_rgb_01{i_color, 1}(i_step,:);
    end
    
    custom_color_grad{i_color} = temp_color_array;
end

% === Visualization ===
figure('Position', [300 300 1200 300]);
img = image;
img = img.CData;
for i_plot = 1:colorNum
    subplot(1, colorNum,i_plot);
    axis ij;
    imagesc(img);
    pbaspect([1 1 1]);
    ax= gca;
    ax.XAxis.Visible = 'off';
    ax.YAxis.Visible = 'off';
    colormap(ax, custom_color_grad{i_plot});
end

sgt = sgtitle(titleName);
sgt.FontSize = 25;
sft.FontName = 'PT Mono';
saveas(gcf, titleName+".png");