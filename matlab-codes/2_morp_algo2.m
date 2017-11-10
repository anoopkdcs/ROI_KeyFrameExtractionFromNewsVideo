%%Morphology Based Text Detection and Extraction from News Videos.
%Algorithm #2,Anoop K. 

%step#1: closing, opening and differance 
close all;
clear all;


img=imread(strcat('img\Img2.jpg'));%152 ,1132. 183
%img=rgb2gray(img);
[m,n]=size(img);
%img=rgb2gray(img);
se=strel('square',3);
c=imclose(img,se);
o=imopen(img,se);
dif=c-o;
diff=imclose(dif,se);
dd=imdilate(diff,se);


%% Step#2: Thresholding 
dif=rgb2gray(dif);

%thresholding using otsu
th=dif;
level = graythresh(th);
x1 = im2bw(dif,level);
% figure, imshow(x);
%%
%Step#3: Candidate Region Extraction
% A: Dilation 
se2=strel('square',6);
crimg=imdilate(x1,se2);
%figure,imshow(crimg), title('CRE--Dilation');

% B: Filling Narrow Gaps 
w=(m*15)/100;
BW2 = bwmorph(crimg, 'bridge',1000);%400000


% C: Removing Small CCs in the basis oa AREA
[L, num]=bwlabel(BW2);
for i=1:num
    area(i)=bwarea(L==i);
end
x=find(area>250);%300
xnum=numel(x);
M=0;
for i=1:xnum
    if i+1>xnum
        break;
    end  
    M= M+(L==(x(i)));
end

[M,mnum]=bwlabel(M);

%Bounder finding -- BoundingBox 
bbx=regionprops(L,'Area');

%Area Removal
area_values = [bbx.Area];
id=find(area_values>200);%250
smallarearemoved= ismember(L, id);
bbx=regionprops(smallarearemoved,'BoundingBox');
[bbm,bbn]=size(bbx);

%Ticker Region Extraction Extraction 
j=7;
for i=1:bbm

bx=bbx(i).BoundingBox(1);
by=bbx(i).BoundingBox(2);
bw=bbx(i).BoundingBox(3);
bh=bbx(i).BoundingBox(4);

subImage = imcrop(img, bbx(i).BoundingBox);
figure(), imshow(subImage);


rectangle('Position', bbx(i).BoundingBox, 'EdgeColor', 'r');
hold all ;
 j=j+1;
 

end

