function output = show_boundaries(image, boxes,area_values)
  hold on;
  imshow(image);
  for (i=1:length(boxes))
     BB = boxes(i).BoundingBox;
     if(area_values(i).Area)
        rectangle('Position', [BB(1), BB(2), BB(3), BB(4)], 'EdgeColor', 'b', 'LineWidth', 1);
    end
  end 
  hold off;
endfunction
