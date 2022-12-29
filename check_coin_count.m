clc
clear all
close all

% path for image of coins
measurement_path="C:\Users\meemk\OneDrive\Desktop\DIIP-Final-Project\Estim_Coins\Images\Measurements_1\1M1773.JPG";
measurement=imread(measurement_path);

% path for average dark,bias and flat frames
avg_dark_path="C:\Users\meemk\OneDrive\Desktop\DIIP-Final-Project\Estim_Coins\Images\Average_Frames_for_Calibration\average_dark.JPG";
avg_bias_path="C:\Users\meemk\OneDrive\Desktop\DIIP-Final-Project\Estim_Coins\Images\Average_Frames_for_Calibration\average_bias.JPG";
avg_flat_path="C:\Users\meemk\OneDrive\Desktop\DIIP-Final-Project\Estim_Coins\Images\Average_Frames_for_Calibration\average_flat.JPG";

all_dark_avg=imread(avg_dark_path);
all_bias_avg=imread(avg_bias_path);
all_flat_avg=imread(avg_flat_path);

[coins] = estim_coins(measurement, all_bias_avg, all_dark_avg, all_flat_avg);

coins
