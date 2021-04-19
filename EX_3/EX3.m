%% Exercise: Image Acquisition & Sampling 
%% Exercise 1
% (1)
D = ones(1024, 1024)/2 + 0.5 * sin( 0.2*pi*(1: 1024));
figure, imshow(D);

% (2)
D2 = D((1:2:1024), (1:2:1024));
figure, imshow(D2);
D2R = imresize(D2, [1024, 1024]);
figure, imshow(D2R);

% (3)
D9 = D((1:9:1024), (1:9:1024));
figure, imshow(D9);
D9R = imresize(D9, [1024, 1024]);
figure, imshow(D9R);

% (4)
D10 = D((1:10:1024), (1:10:1024));
figure, imshow(D10);
D10R = imresize(D10, [1024, 1024]);
figure, imshow(D10R);


%% Exercises 4&5
% (1)
lena = imread("EX3_picture/lena.png");
figure, imshow(lena);
figure, imshow(fliplr(lena));
figure, imshow(flipud(fliplr(lena)));

% (2)
figure, imshow(lena);
figure, imshow(rot90(lena, 1));

% (3)
figure, imshow(lena);
figure, imshow(flipud(fliplr(lena)));

% (4)
figure, imshow(lena);
impixelinfo;
figure, imshow(lena((340:370), (265:325)));

% (5)
lena_rip = lena;
lena_rip((340:370), (265:325)) = lena_rip((450:480), (270:330));
figure, imshow(lena_rip);


%% Exercise 7
% (1)
imfinfo("EX3_picture/strawberry.jpg").ColorType
imfinfo("EX3_picture/forest.tif").ColorType
imfinfo("EX3_picture/blocks.tif").ColorType
imfinfo("EX3_picture/nicework.tif").ColorType

% (2)
A = imread("EX3_picture/strawberry.jpg");
[B, Bmap] = imread("EX3_picture/forest.tif");
C = imread("EX3_picture/blocks.tif");
D = imread("EX3_picture/nicework.tif");
whos

figure,  imshow(A);
figure,  imshow(B, Bmap);
figure,  imshow(C);
figure,  imshow(D);

% (3)
A(100, 120, :)
impixel(A, 120, 100)
B(100, 120)
impixel(B, 120, 100)
C(100, 120)
impixel(C, 120, 100)
D(100, 120)
impixel(D, 120, 100)

% (4)
figure, imshow(B, Bmap);
ture_color_B = reshape(Bmap(B, :), 301, 447, 3);
figure, imshow(ture_color_B);
grayscle_B = rgb2gray(ture_color_B);
figure, imshow(grayscle_B);

% (5)
figure, imshow(C);
binary_C = imbinarize(C);
figure, imshow(binary_C);


%% Exercise 8
% (1)
lena_color = imread("EX3_picture/lena_color.png");
figure, imshow(lena_color);

lena_R = lena_color(:, :, 1);
figure, imshow(lena_R);
lena_G = lena_color(:, :, 2);
figure, imshow(lena_G);
lena_B = lena_color(:, :, 3);
figure, imshow(lena_B);

% (2)
lena_NR = lena_color;
lena_NR(:, :, 1) = 0;
figure, imshow(lena_NR);

% (3)
lena_RB_swap = lena_color(:, :, (3:-1:1))
figure, imshow(lena_RB_swap);

% (4)
lena_blk = lena_color;
mask = ~(lena_R > 200 & lena_G > 200 & lena_B > 200);
% Mask the image.
lena_blk = bsxfun(@times, lena_blk, cast(mask,class(lena_blk)));
figure, imshow(lena_blk);