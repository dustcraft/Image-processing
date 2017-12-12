function [  ] = cropping( )
%% Cropping: crop the images with certain size
% set your own start point & the size which you want to crop. 

% Author: Yan Song-lin, PhD
%         Computer Network Information Center
%         Chinese Academy of Sciences
%         Beijing, China
% E-mail: ysl1abx@gmail.com
% Copyright (c) 2017, December 
% All rights reserved.
% Compiled by matlab 2016a

path='H:\3\contrast_H';
cd(path);
allnames=struct2cell(dir('*.bmp'));  

[k,len]=size(allnames); 
for ii=1:len
    name=allnames{1,ii};
    [RGB MAP]=imread(name);

    %start point + size
    J=imcrop(RGB,[180,180,159,159]);

    name1=name(1:end-4);
    imwrite(J,strcat('H:\3\crop_H\',name1,'.bmp'));
end

end

