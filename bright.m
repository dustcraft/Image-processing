function [  ] = bright( )
%% Brighten images
% This program will brighten images. 

% Author: Yan Song-lin, PhD
%         Computer Network Information Center
%         Chinese Academy of Sciences
%         Beijing, China
% E-mail: ysl1abx@gmail.com
% Copyright (c) 2017, December 
% All rights reserved.
% Compiled by matlab 2016a

clc;
path='C:\Users\zhaodi\Desktop\DRD\Severe NPDR\train';%%
cd(path);
allnames=struct2cell(dir('*.jpeg'));  %

[k,len]=size(allnames); %get the number of images
for ii=1:len
%get file one by one
name=allnames{1,ii};
RGB=imread(name);
RGB1=im2double(RGB);
A=brighten(RGB1,0.5);
name1=name(1:end-5);%
imwrite(A,strcat('C:\Users\zhaodi\Desktop\DRD\Severe NPDR\bright\',name1,'_','b','.jpeg'));%

end

end

