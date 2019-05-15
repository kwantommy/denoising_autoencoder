clear;
close all;
clc;
clf;

i = 0;

%% CONVERT TO GREYSCALE

% for i = 0:10999
%     i
%     baseFileName = sprintf('%d.jpg',i);
%     try
%         im = imread(baseFileName);   %Open files < 10
%     catch 
%         continue 
%     end
%     if size(im, 3) > 1
%          im = rgb2gray(im);
%     end
%     output = imresize(im, [256 256]); 
%     folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper/dog_train';
%     imwrite(output,fullfile(folder,baseFileName));
% end
% 
% for i = 11000:12499 %Open files 0 - 29 
%     i
%     baseFileName = sprintf('%d.jpg',i);
%     try
%         im = imread(baseFileName);   %Open files < 10
%     catch 
%         continue 
%     end
%     if size(im, 3) > 1
%          im = rgb2gray(im);
%     end
%     output = imresize(im, [256 256]); 
%     folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper/dog_test';
%     imwrite(output,fullfile(folder,baseFileName));
% end
%     


%% RENAME FOR EASE OF READING AND PREP FOR AUGMENTATION

%TRAINING SET CONSUMES 0:44000
%0:10999 - no flips (11000)
%0:21999 - flip 1 (22000)
%0:32999 - flip 2 (33000)
%0:43999 - flip 3 (44000)

%Therefore, test set should start from 44000
%44000:4



%% FLIP IMAGES FOR AUGMENTED DATA SET 
for i = 0:10999 %Open files 0 - 29 
    i
    baseFileName = sprintf('%d.jpg',i);
    try
        im = imread(baseFileName);   %Open files < 10
    catch
        continue
    end
    im = im2double(im);
    output = imnoise(im,'salt & pepper',0.01);
    folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper_augmented/dog_train_salt_pepper';
    imwrite(output,fullfile(folder,baseFileName));
end

for i = 11000:12499
    i
    baseFileName = sprintf('%d.jpg',i);
    try
        im = imread(baseFileName);   %Open files < 10
    catch
        continue
    end
    im = im2double(im);
    output = imnoise(im,'salt & pepper',0.01);    
    folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper_augmented/dog_test_salt_pepper';
    imwrite(output,fullfile(folder,baseFileName));
end


%% APPLY SALT AND PEPPER NOISE 

for i = 0:10999 %Open files 0 - 29 
    i
    baseFileName = sprintf('%d.jpg',i);
    try
        im = imread(baseFileName);   %Open files < 10
    catch
        continue
    end
    im = im2double(im);
    output = imnoise(im,'salt & pepper',0.01);
    folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper_augmented/dog_train_salt_pepper';
    imwrite(output,fullfile(folder,baseFileName));
end

for i = 11000:12499
    i
    baseFileName = sprintf('%d.jpg',i);
    try
        im = imread(baseFileName);   %Open files < 10
    catch
        continue
    end
    im = im2double(im);
    output = imnoise(im,'salt & pepper',0.01);    
    folder = '/Users/tommykwan/Documents/MachineLearning/DeepLearning/generative/autoencoder_salt_pepper_augmented/dog_test_salt_pepper';
    imwrite(output,fullfile(folder,baseFileName));
end
