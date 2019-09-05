def map(arr)
  new = []
  i = 0
  while i < arr.length do
    new.push(yield(arr[i]))
    i += 1
  end
  new
end

def reduce(arr, sp=nil)
  if sp
    sum = sp
    i = 0
  else
    sum = arr[0]
    i = 1
  end

  while i < arr.length
    sum = yield(sum, arr[i])
    1 += 1
  end
  sum
end
