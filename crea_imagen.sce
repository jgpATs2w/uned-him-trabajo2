imgFile='/home/eleuteron/workspace/uned-him-trabajo2/imagenRGB_T2.txt';
Img=read_csv(imgFile, ' ');

ImgIntegers= zeros(size(Img));
for i = 1 : size(Img,'r')
    for j = 1 : size(Img,'c')
        //Emplea el mapa de colores obtenido con getcolor()
        ImgIntegers(i,j) = strindex('.BG.R', Img(i,j));
    end
end

//TODO set right custom colormap: https://help.scilab.org/docs/5.3.3/en_US/colormap.html
//cmap=[[255 0 0]; [0 255 0];[0 0 255]];

Matplot(ImgIntegers);
