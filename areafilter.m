function output = areafilter(area_values,threshold)
  min_area = 50000;
  len = length(area_values);
  for(i=1:length(area_values))
    area_measure = area_values(i).Area;
    min_area= min(min_area, area_measure);
  end 
  for(i=1:length(area_values))
    area_measure = area_values(i).Area;
    if(area_measure <= min_area + threshold)
      len = len-1;
    end
   end
  output = len;
  endfunction
