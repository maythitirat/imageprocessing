%find only circle in circle crossing line picture
I = im2bw(imread('CirLine.tif'));
b = I;
c = I;
c(:,:) = 0;

figure;

    se=strel('disk',7,0);
    I = imerode(b,se);
    I = imdilate(I,se);
    c = c+I;
imshow(c);
