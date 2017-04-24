%find only line in cirle crossing line picture
I = imread('CirLine.tif');
b = I;
c = I;
c(:,:) = 0;

figure;
for i=0:36
    se=strel('line',50,i*5);
    I = imerode(b,se);
    %I = imdilate(I,se);
    c = c+I;
end
imshow(c);


