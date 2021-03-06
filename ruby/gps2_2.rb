# GPS2.2

## Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a hash
  # set default quantity (1)
  # print the list to the console - method to print the list
# output: return the hash
def create_list(items)
  list = {}
  items.split(" ").each {|item| list[item] = 1}
  print_list(list)
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name => quanitity to hash
# output: print list
def add_item(list, item, quantity=1)
  update_item_quantity(list, item, quantity)
end

# Method to remove an item from the list
# input: list, item name
# steps: delete item name from list hash
# output: print list
def remove_item(list, item)
  list.delete(item)
  print_list(list)
end

# Method to update the quantity of an item
# input: list, item name, quanity
# steps: update the value of the the key item name in list hash
# output: item name quanity updated
def update_item_quantity(list, item, quantity)
  list[item] = quantity
  print_list(list)
end

# Method to PRINT A LIST and make it look pretty
# input: list (hash)
# steps: for each item/quanity print a line like Item: quantity
# output: print the hash
def print_list(list)
  puts "Here's your grocery list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

grocery_list = create_list("cereal bread eggs milk")
add_item(grocery_list, "yogurt", 7)
remove_item(grocery_list, "eggs")
update_item_quantity(grocery_list, "cereal", 3)

# Even though we did not refer much to our psuedo code it was helpful to 
# work it out in plain english as I am sure it had a positive effect on 
# our thinking and workflow as we went through each of the methods.

# In terms of arrays vs hashes, I think arrays are simpler to work with
# and they're a simpler structure altogether, but hashes allow you to label
# your data and I think that makes them super important when that is a 
# requirement.

# In ruby a method returns the last evaluated statement. you can pass 
# variables and methods into methods

# You can provide methods and variables as arguments into methods

# There wasn't really any passing of methods as arguments into other methods
# in our way of solving this problem. It would be cool to see some examples
# so that we can have a visual of what that'll look like.
