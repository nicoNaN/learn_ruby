def add( number_one, number_two )
  return number_one + number_two
end

def subtract( number_one, number_two )
  return number_one - number_two
end

def sum( numbers )
  total = 0
  numbers.each do |element|
    total += element
  end
  return total
end

def multiply( numbers )
  total = 1
  numbers.each do |element|
    total *= element
  end
  return total
end

def power( number_one, number_two )
  return number_one ** number_two
end

def factorial( number )
  if number == 0
    return 1
  else
    return number * factorial( number - 1 )
  end
end