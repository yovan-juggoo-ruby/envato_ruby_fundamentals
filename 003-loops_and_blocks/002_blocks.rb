
# Functionnal programming trys to encapsulate functions inside variables. These functions are passed around and executed wherever needed.
# This makes functions dynamic and flexible. Blocks encapsulate groups of behaviour in a very flexible way. There are two ways to represent blocks
# Using do something end or {}. Beware {} are different than hashes
# A hash is represented as a key pair value. For example a = {key: value}. Here we are assigned a hash to the varible a.
# A block is always preceded by a method name.
# Here below we have defined a function named form and by using the yield method we will inject HTML code at runtime.
# The form tag is printed before and after the block is yeilded. The yeild will take anything that we pass to the block at runtime.
# If we don't pass any blocks while calling our method, Ruby raises an error.
# To get around this the method itself has to check if a block was given with if block_given? before trying to yield.

def form &block
  puts '<form>'
  yield if block_given?
  puts '</form>'
end

def paragraph paragraph_text
  puts "\t" + '<p>' + paragraph_text + '</p>'
end

def quote quote_text
  puts "\t" + '<blockquote>' + quote_text + '</blockquote>'
end

fruits = ['Apple', 'Banana', 'Mango', 'Kiwi', 'Pineapple', 'Orange', 'Grapes', 'Water melon']

def list items
  puts "\t" + "<ul>"
  items.each { |item|  puts "\t\t" + '<li>' + item + '</li>'}
  puts "\t" + "</ul>"
end

# Example 1
form do
  paragraph 'This is a paragraph'
  quote 'This is a quote from Shakespeare'
  list fruits
end

# Example 2
form do 
	puts "\t" + '<h1>This is a header</h1>'
end


# Example 3
form