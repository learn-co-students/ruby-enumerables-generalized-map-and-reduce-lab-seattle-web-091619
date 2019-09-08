def map(source_array)
  i = 0 
  new_array = []
  while i<source_array.length do
    new_array.push yield (source_array[i])
    i+=1 
  end
new_array
end 

def reduce(source_array, starting_point = nil )
  i = 0
  if starting_point == nil 
    i = 1
    total =  source_array[0]
  else
    total = starting_point
  end  
  while i<source_array.length do
    total = yield(total, source_array[i] )
    i+=1 
  end
total
end 
