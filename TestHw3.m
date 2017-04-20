p = im2bw(imread('Hw3_3.png'));

p2 = bwmorph(p,'remove');
figure
imshow(p2)