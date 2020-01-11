function output=wordcount(image,threshold)
  [w,h,~]=size(image);
  se=strel('disk',threshold,0);
  image=imdilate(image,se);
  [image,num]=bwlabel(image);
  output = num;
endfunction
