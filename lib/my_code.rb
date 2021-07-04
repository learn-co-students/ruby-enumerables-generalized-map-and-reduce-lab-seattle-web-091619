def map(array)
  new = []
  count = 0
  while count < array.length
    new.push(yield(array[count]))
    count += 1
  end
  new
end

def reduce(array, start = nil)
  if start
    num = start
    count = 0
  else
    num = array[0]
    count = 1
  end
  
  while count < array.length
    num = yield(num, array[count])
    count += 1
  end
  num
end