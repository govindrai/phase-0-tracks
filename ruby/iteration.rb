def block_taking_method
    puts "The block has not yet run"
    running = "The block is running"
    yield(running)
    puts "The block has run"
end

block_taking_method { |message| puts message }

color_array = ['blue', 'yellow','orange', 'green', 'indigo', 'red', 'purple', 'brown']
age_hash = {rebecca:25, george:23, layla:27}

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

color_array.delete_if { |color| color[0] == 'B'}
puts color_array

age_hash.delete_if { |person, age| age == 23}
puts age_hash

color_array.keep_if { |color| color.length < 6}
puts "Color", color_array

age_hash.keep_if { |person, age| age > 23}
puts age_hash

color_array.select! { |color| color[0] == 'Q'.next }
puts color_array

age_hash.select! do |person, age|
    age.even?
end
puts age_hash

color_array = ['blue', 'yellow','orange', 'green', 'indigo', 'red', 'purple', 'brown']
age_hash = {gonzalez:40, gary: 40, rebecca:25, george:23, layla:27}

filtered_color_array = color_array.drop_while { |color| color.length > 3 && color.length < 7}
puts filtered_color_array


age_hash.delete_if do |person, age|
    kept_items = []
    age_hash.keys.each do |person|
        if person.length > 5
            kept_items << person
            else break
        end
    end
    kept_items.include? person
end

puts age_hash