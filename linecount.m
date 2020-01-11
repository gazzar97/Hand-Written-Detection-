function output = linecount(image, angle)
  [w,h] = size(image);
  se = strel('line',w,angle);
  image = imdilate(image, se);
  [image,num] = bwlabel(image);
  imshow(image);
  output= num;
endfunction
