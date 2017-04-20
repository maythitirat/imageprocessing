clc
clear all,

circles = imread('circles.JPG');
circles1 = circles;
[r c] = size(circles1);

for i = 1:r
       for j = 1:c
if (circles1(i,j) >= 80 && circles1(i,j) <= 220)
circles1(i,j) = 255;
else
circles1(i,j) = 0;
end
end
end

circles1 = im2bw(circles1);

b = bwboundaries(circles1);
imshow(circles1);
text(10,10,strcat('\color{green} total:',num2str(length(b))))
%figure, imshow(circles1),impixelinfo
