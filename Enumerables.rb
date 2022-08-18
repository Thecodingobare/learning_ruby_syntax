require 'pry'

#=================================
#Enumerables : Method Syntax
#=================================
# forEach: access each element from an array. Returns the original array.

# map: access each element from an array, and return a new array, usually by transforming (mapping) the values to some new value.

# find: access each element from an array, and return the first value that matches some criteria.

# filter: access each element from an array, and return a new array of all values that matches some criteria.

#==================================


books = [
    {
     title : "Lwanda Magere",
    author: "Magerero",
     genre: "Fiction"},
    {title : "Maji Maji Rebelion",
    author: "Kinjeketile",
     genre: "History"},
    {title : "Nandi Wa Mokove",
    author: "Kambalisia",
    genre: "Fictional"},
    {title : "Lwanda Magere",
    author: "Magerero",
    genre: "Fiction"},
    {title : "Maji Maji Rebelion",
    author: "Kinjeketile",
    genre: "History"}
]

#each

books.each do |book|
    binding.pry
    puts |book|
end
