function [output1,output2] = preprocess(image)
  filled = imfill(image);
  image = filled - image;
  image = im2bw(image,graythresh(image));
  LM = labelmatrix(bwconncomp(image));
  output1 = LM;
  output2 = image;
endfunction
