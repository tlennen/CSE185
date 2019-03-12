% Tyler Lennen CSE 185 Lab 1, Date:1/28/19
%Part 1
red = imread('01.jpg');
red(:,:,1) = 0;
figure;
imshow(red);
imwrite(red,'red.jpg');

%Part 2
rgb = imread('02.jpg');
gray = zeros(size(rgb,1),size(rgb,2));
gray(:,:) = rgb(:,:,1)*0.299 + 0.587*rgb(:,:,2) + 0.114*rgb(:,:,3);
gray = mat2gray(gray,[0,255]);
figure;
imshow(gray);
imwrite(gray,'gray.jpg');

%Part 3
rotate = imread('03.jpg');
rotate = imrotate(rotate,90);
figure;
imshow(rotate);
imwrite(rotate,'rotate.jpg');

%Part 4
origin = imread('04.jpg');
crop = origin(31:size(origin,1)-30,31:size(origin,2)-30,:);
figure;
imshow(crop);
imwrite(crop,'crop.jpg');

%Part 5
vert = flipud(origin);
figure;
imshow(vert);
imwrite(vert,'flip.jpg');

%Part 6
combine = zeros(615,815,3,'uint8');
p1 = imread('01.jpg');
p2 = imread('02.jpg');
p3 = imread('03.jpg');
p4 = imread('04.jpg');
combine(1:300,1:400,:) = p1(:,:,:);
combine(316:end,1:400,:) = p2(:,:,:);
combine(1:300,416:end,:) = p3(:,:,:);
combine(316:end,416:end,:) = p4(:,:,:);
figure;
imshow(combine);
imwrite(combine,'combine.jpg');

%Part 7
flipv = vert(:);
p4v = p4(:);
new_image = (p4v(:)+ flipv(:))/2;
new_image = reshape(new_image,300,400,3);
figure;
imshow(new_image);
imwrite(new_image,'average.jpg')




