function output = main()
  pkg load image;
  r_img = imread('Case.3.3.jpg');
  img = r_img;
  img = rgb2gray(img);  
  ## CASE3.3.2 HANDELER
  width = 1920;
  height = 1300;
  [imW, imH] = size(img);
  left = (imH /2) - (width/2);
  top = (imW /2) - (height/2);
  img = imcrop(img, [left top width height]);
  ## CASE3 END HANDELR
  [LM,img]=preprocess(img);
  Boxes = regionprops(LM, 'BoundingBox');
  Areas = regionprops(LM , 'Area');
  ##IT'S JUST HELPER FUNCTION## show_boundaries(img, Boxes, Areas);
  fprintf('Lines count %i \n',linecount(img,316));
  fprintf('Words count %i \n',wordcount(img,35));
  fprintf('Charchters count %i \n',areafilter(Areas, 320));
  
endfunction
