def block_taking_method
    puts "The block has not yet run"
    running = "The block is running"
    yield(running)
    puts "The block has run"
end

block_taking_method { |message| puts message }

color_array = ['blue', 'yellow','orange', 'green', 'indigo', 'red', 'purple', 'brown']
age_hash = {rebecca:25, george:'23', layla:'27'}

# Iteration with .each

puts "Array before iteration: #{color_array}"
color_array.each do |color|
    puts color
end
puts "Array after iteration: #{color_array}"

puts "Hash before iteration: #{age_hash}"
age_hash.each do |person, age|
    puts "#{person} is #{age} years old"
end
puts "Array after iteration: #{age_hash}"

# Iterative Mapping with .map(!)

puts "Hash before iterative mapping: #{color_array}"
color_array.map! do |color|
    color.upcase
end
puts "Hash after iterative mapping: #{color_array}"

# Other block methods for arrays/hashes

color_array.delete_if { |color| color[0] == 'b'}