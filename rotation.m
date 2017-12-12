function [  ] = rotation( )
%% Rotation: rotate the images with random angle
% this program will rotate the images angle by (pseudo-random integer) Uniform Distribution [0,360]. 

% Author: Yan Song-lin, PhD
%         Computer Network Information Center
%         Chinese Academy of Sciences
%         Beijing, China
% E-mail: ysl1abx@gmail.com
% Copyright (c) 2017, December 
% All rights reserved.
% Compiled by matlab 2016a
path='C:\Users\zhaodi\Desktop\DRD\PDR\train';
cd(path);
allnames=struct2cell(dir('*.jpeg'));  

[k,len]=size(allnames); 
for ii=1:len
name=allnames{1,ii};
RGB=imread(name);
angle=randi([0,360],1,1);
A=imrotate(RGB,angle,'bilinear','crop');
name1=name(1:end-5);
imwrite(A,strcat('C:\Users\zhaodi\Desktop\DRD\PDR\rotation\',name1,'_','r','.jpeg'));

end

end

