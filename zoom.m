function [  ] = zoom( )
%% Zoom: zoom the images with random size
% this program will rotate the images angle by continuous Uniform Distribution [0.5,2.0]. 

% Author: Yan Song-lin, PhD
%         Computer Network Information Center
%         Chinese Academy of Sciences
%         Beijing, China
% E-mail: ysl1abx@gmail.com
% Copyright (c) 2017, December 
% All rights reserved.
% Compiled by matlab 2016a

%% Main
path='C:\Users\zhaodi\Desktop\DRD\PDR\train';
cd(path);
allnames=struct2cell(dir('*.jpeg'));  

[k,len]=size(allnames); 
for ii=1:len

name=allnames{1,ii};
[RGB,MAP]=imread(name);
R = unifrnd(0.5,2.0);
J=imresize(RGB,R,'bicubic');
name1=name(1:end-5);
imwrite(J,strcat('C:\Users\zhaodi\Desktop\DRD\PDR\zoom\',name1,'_','z','.jpeg'));

end

end

