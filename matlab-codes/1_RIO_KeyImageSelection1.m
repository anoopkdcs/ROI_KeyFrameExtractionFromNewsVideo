%% clear and close all
clear all;
close all;

%% Reading video and props. of video 
myvid=VideoReader('News_video03.mp4');
nFrames=myvid.NumberOfFrames;
vidHeight=myvid.Height;
vidWidth=myvid.Width;
%%
%%reab one frame at a time and display using figure(1) 
TotalTF=0;
k=1;
for k= 1:nFrames
y = read(myvid, k);
y1=y;
y=rgb2gray(y);
%RIO analysis 
    for i=260:307
        for j=134:464
             if (i==308) & (j==464)
             break;
             end
             % if (y(i,j)>80 )& ((y(i+1,j+1)-y(i,j))>50) 
            %if (y(i,j)>100 )& ((y(i+1,j+1)-y(i,j))>100) 
            if (y(i,j)>100 )
             TF=1;  
            else
             TF=0;
            end
    TotalTF=TotalTF+TF;
        %y(i,j)=0;
        j=j+1;
end
    i=i+1;
    end
%% check threshold for key image selection
if TotalTF>1200
    %Writing frame in to folder snap 
    opFolder = fullfile(cd, 'snaps');
    opBaseFileName = sprintf('%3.3d.jpg', k);
    opFullFileName = fullfile(opFolder, opBaseFileName);
    imwrite(y1, opFullFileName, 'jpg'); 
    figure(1), imshow(y); title(TotalTF);
    TotalTF=0;
    TF=0;
end
%figure(1), imshow(y); title(TotalTF);
%figure(1), imshow(img);
k=k+10;
end
