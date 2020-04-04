close all
clear
clc

[file, path] = uigetfile('*.bmp; *.jpg; *.png', 'image ...');
im = imread([path file]);
im = im2double(im);
hsv = rgb2hsv(im);

devig = devignetting(round(hsv(:,:,3) * 255));
hsv(:,:,3) = double(devig) / 255;
im1 = hsv2rgb(hsv);
% figure, imshow(im)
% figure, imshow(im1)

[~, w, ~] = size(im);
cmp_img = cat(2, im, im1);
imshow(cmp_img)
text(10, 10, 'origin', 'Color', 'red')
text(10+w, 10, 'processed', 'Color', 'red')

fig = getframe;
figure, imshow(fig.cdata)
imwrite(fig.cdata, file)
