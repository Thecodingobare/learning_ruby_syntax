#ARRAYS
shopping_list = ["Cookies", "Ice Cream", "Snickers"]

#Updating
shopping_list[1] = "Mint Chocolate Chip Ice Cream"
# => "Mint Chocolate Chip Ice Cream"
pp shopping_list
# => ["Cookies", "Mint Chocolate Chip Ice Cream", "Snickers"]

#Ruby also has a couple methods for convenience for accessing elements at the beginning and end of arrays:

shopping_list.first
# => "Cookies"
shopping_list.last
# => "Snickers"

#length
shopping_list.length
# => 3
shopping_list.size
# => 3

#Slice

#The slice() method selects from a given start, up to a (not inclusive) given end.


#Method to access multiple elements from an array.
#Also in javascript

shopping_list.slice(0, 2)
# => ["Cookies", "Mint Chocolate Chip Ice Cream"]
shopping_list[0..1]
# => ["Cookies", "Mint Chocolate Chip Ice Cream"]
pp shopping_list[0...2]
# => ["Cookies", "Mint Chocolate Chip Ice Cream"]

#With the Range notation, two dots (..) means "all numbers up to and including the last one", and three dots (...) means "all numbers up to, but not including, the last one."


#ADDING ELEMENTS TO ARRAYS

#push
#End of array

#unshift
#Add to the begining

shopping_list.push("M&Ms")
# => ["Cookies", "Mint Chocolate Chip Ice Cream", "Snickers", "M&Ms"]
pp shopping_list.unshift("Cake")
# => ["Cake", "Cookies", "Mint Chocolate Chip Ice Cream", "Snickers", "M&Ms"]

#shovel method
#same as push but more commonly used

shopping_list << "Tums"
# => ["Cake", "Cookies", "Mint Chocolate Chip Ice Cream", "Snickers", "M&Ms", "Tums"]


#concat

one_two_three = [1, 2, 3]
four_five_six = [4, 5, 6]

one_two_three.concat(four_five_six)
# => [1, 2, 3, 4, 5, 6]
one_two_three
# => [1, 2, 3, 4, 5, 6]

#concat changes the data in the original array, so if you want to combine arrays without changing the original, you can also use the + method:

one_two_three = [1, 2, 3]
four_five_six = [4, 5, 6]

one_two_three + four_five_six
# => [1, 2, 3, 4, 5, 6]
one_two_three
# => [1, 2, 3]

#REMOVING ELEMENTS FROM ARRAYS

#pop
#From end of array
shopping_list.pop
# => "Snickers"


#shift
#From beginning of array
shopping_list.shift
# => "Cookies

#ADVANCED METHODS

#Check if particular value is present

#include?
letters = ["a", "b", "c"]
letters.include?("a")
# => true
letters.include?("e")
# => false

#reverse
letters.reverse
# => ["c", "b", "a"]
letters
# => ["a", "b", "c"]

#This returns a new array in the reverse order. You can also reverse the array in place (change the data in the array) with the #reverse! method:

alphabets = ["a","b","c","d","e"]

another_alphabets = alphabets.reverse

pp another_alphabets
#["e", "d", "c", "b", "a"]

pp another_alphabets.reverse!
#["a", "b", "c", "d", "e"]

#sum
[1, 2, 3].sum
# => 6

#uniq
#Last but not least, Ruby has a #uniq method for returning only the unique elements from an array:

[1, 1, 2, 3, 5].uniq
# => [1, 2, 3, 5]

#Special Array syntax

#Ruby supports a couple of other special syntaxes for creating arrays which you may encounter in other Ruby code. You can use %w to create an array of strings (assuming each string is one word):

%w[pending resolved rejected]
# => ["pending", "resolved", "rejected"]

#You can also create an array of symbols with %i:

%i[pending resolved rejected]
# => [:pending, :resolved, :rejected]