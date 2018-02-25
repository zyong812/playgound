# Radix sort
test_a = [329, 457, 657, 839, 436, 720, 355]

3.times do |index|
  temp_a = []
  test_a.each do |val|
    rad = val.to_s[-1 - index].to_i
    if temp_a[rad].is_a? Array
      temp_a[rad] << val
    else
      temp_a[rad] = [val]
    end
  end
  test_a = temp_a.flatten.compact
  puts "Iteration #{index}: #{test_a}"
end


