def map(source_array) 
  new = []
  i = 0 
  while i < source_array.length do
    new.push(yield source_array[i])
    i += 1 
  end
  return new 
end

def reduce(source_array, starting_point=nil)      
  i = 0    
  
  if starting_point
    new = starting_point
  else 
    new = source_array[0] 
    i=1 
  end 

  while i < source_array.length do
    new = yield(new, source_array[i])
    i += 1 
  end
  return new
end 