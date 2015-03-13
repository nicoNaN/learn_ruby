def reverser
  yield.split(" ").map{ |string| string.reverse }.join(" ")
end

def adder( to_add=1 )
  yield + to_add
end

def repeater( repeat=1 )
  repeat.times do
    yield
  end
end