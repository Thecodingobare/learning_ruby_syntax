#ARRAY
upcased = ["this", "is", "Ruby"].map do |str|
    str.upcase
  end
  
 pp upcased
  # => ["THIS", "IS", "RUBY"]


  #Using .map

  fly = ["this", "is", "Ruby"].map do |astronaut|
    astronaut.upcase
  end

  pp fly

  # => ["THIS", "IS", "RUBY"]

  #Since the last line of a block is used as the implicit return value in Ruby — even without the return keyword — it's important to understand what different methods return. For example, using #puts in this method would have different behavior, since #puts returns nil:

  map_it_out = ["this", "is", "Ruby"].map do |str|
    puts str.upcase
  end

  pp map_it_out

# "THIS"
# "IS"
# "RUBY"
# => [nil, nil, nil]

#ACCESSING THE INDEX

#With Ruby, to access the index, you can chain the #with_index method on most enumerable methods, including #map:

index_it_out = ["this", "is", "Ruby"].map.with_index do |str, index|
    if index.even?
      str.upcase 
    else
      str
    end
  end

  pp index_it_out
  # => ["THIS", "is", "RUBY"]

  #Putting the Enumerables on a single line

  ["this", "is", "Ruby"].map { |str| str.upcase }
  
  ["this", "is", "Ruby"].map(&:upcase)
# => ["THIS", "IS", "RUBY"]

#ampersand colon || pretzel colon

words = %w[would you like to play a game]

pp words
#["would", "you", "like", "to", "play", "a", "game"]

print_words = words.map &:length
pp print_words
#the length of each array in words array is:
#[5, 3, 4, 2, 4, 1, 4]

words_2 = words.map { |w| w.length }

pp words_2
#[5, 3, 4, 2, 4, 1, 4]



#Note that this syntax only works in the exact scenario we have above, where we are calling one method on every element in the array. If we needed to do more work in the block, like uppercase every string and add an exclamation mark, we'd need to use block syntax instead:

# ["this", "is", "Ruby"].map(&:upcase + "!")
# => NoMethodError (undefined method `+' for :upcase:Symbol)

["this", "is", "Ruby"].map { |str| str.upcase + "!" }
# => ["THIS!", "IS!", "RUBY!"]



#Enumerating with Hashes

book = { title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937 }
book.each do |key, value|
  puts "Key: #{key}"
  puts "Value: #{value}"
end
# Key: title
# Value: The Hobbit
# Key: author
# Value: J. R. R. Tolkien
# Key: published
# Value: 1937