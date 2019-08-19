def map(source_array)
  array = []
  source_array.each do |item|
    array.push(yield(item))
  end  
  
  array
end


def reduce(source_array, starting_point=0)
  total = starting_point
  
  source_array.each do |item|
    total += yield(item)
  end  
  
  total
end

