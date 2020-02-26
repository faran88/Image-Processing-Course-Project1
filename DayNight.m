%Faranak Abri
%Image Processing Course

path = uigetdir('C:\');
if isequal(path,0)
   disp('User selected Cancel');
else
    cd(path);
    list=dir(path);
    for i=3:size(list)
        rgbImg=imread(list(i).name);
        hsvImg=rgb2hsv(rgbImg);
        hImg=hsvImg(:,:,1);
        sImg=hsvImg(:,:,2);        
        if(sum(hImg(1:559,:),'all')+ sum(sImg(1:559),'all')== 0)
            result='NIGHT';
        else
            result='DAY';
        end
        figure;        
        imshow(rgbImg);
        title(result);
        pause;

    end

end


