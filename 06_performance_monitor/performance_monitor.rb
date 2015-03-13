def measure( repeat=1 )
  old_time = Time.now
  repeat.times do
    yield
  end
  new_time = Time.now
  ( new_time - old_time ) / repeat
end