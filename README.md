# Hand-Written-Detection-
Hand Written Detection project based on  Morphological techniques in the Image processing field.

This project has three main functions:
* Characters Count 
* Words Count
* Lines Count

### Main idea to count the number of characters in a specific image 

1. Try to find a connected component in an input image.  
2. Compute area for each connected component.
3. Find min area between all connected components.
4. Filter any connected component less than min area added to a specific changeable threshold.

* The idea of using a threshold to try to find the best value of threshold to find the best solution for the input image.

### Main idea to count the number of words in a specific image

1. Create a Structuring Element with disk type. 
2. Apply the Dilation technique with this SE.
3. After the dilation step, the character of every word will be connected.
4. And then invoke bwlabel to count the number of connected components (Words).


### Main idea to count the number of lines in a specific image 

1. Create a Structuring Element with a line type.
2. Apply the Dilation technique with this SE.
3. After the dilation step, the whole words and characters in each line will be connected.
4. And then invoke bwlabel to count the number of connected components (Lines). 








