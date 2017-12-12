function [  ] = flipping( )
%% Flipping: flip the images up and down. 

% Author: Yan Song-lin, PhD
%         Computer Network Information Center
%         Chinese Academy of Sciences
%         Beijing, China
% E-mail: ysl1abx@gmail.com
% Copyright (c) 2017, December 
% All rights reserved.
% Compiled by matlab 2016a

path='C:\Users\zhaodi\Desktop\DRD\Severe NPDR\train';
cd(path);
allnames=struct2cell(dir('*.jpeg'));  

[k,len]=size(allnames); 
for ii=1:len
name=allnames{1,ii};
[RGB MAP]=imread(name);
J=flipud(RGB);
name1=name(1:end-5);
imwrite(J,strcat('C:\Users\zhaodi\Desktop\DRD\Severe NPDR\flip_ud\',name1,'_','ud','.jpeg'));
end

end

