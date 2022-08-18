require 'pry'





books = [
    { 
    title: "The Hobbit", 
    author: "J. R. R. Tolkien", 
    published: 1937 },
    { 
    title: "The Rubisist", 
    author: "Tolkien", 
    published: 1970 },
    { 
    title: "The Barbaric", 
    author: "J. R. R", 
    published: 2004 },
    { 
    title: "Zamblar", 
    author: "Tashkishi", 
    published: 1930 },
    { 
    title: "The Rambostelskid", 
    author: "Alnightning Gale", 
    published: 1950 }
]

#Enumerable

#each 
books.each do |book|
    puts book
end

#{:title=>"The Hobbit", :author=>"J. R. R. Tolkien", :published=>1937}
# {:title=>"The Rubisist", :author=>"Tolkien", :published=>1970}
# {:title=>"The Barbaric", :author=>"J. R. R", :published=>2004}
# {:title=>"Zamblar", :author=>"Tashkishi", :published=>1930}
# {:title=>"The Rambostelskid", :author=>"Alnightning Gale", :published=>1950}

#Example 2

vitabu = [
    { 
    title: "The Hobbit", 
    author: "J. R. R. Tolkien", 
    published: 1937 },
    { 
    title: "The Rubisist", 
    author: "Tolkien", 
    published: 1970 },
    { 
    title: "The Barbaric", 
    author: "J. R. R", 
    published: 2004 },
    { 
    title: "Zamblar", 
    author: "Tashkishi", 
    published: 1930 },
    { 
    title: "The Rambostelskid", 
    author: "Alnightning Gale", 
    published: 1950 }
]

def chapisha_vitabu
vitabu.each do |kitabu|
    puts kitabu
end
end

#collect ||same as map in javascript
#loops through array and returns a new array based on given conditions

titles = books.collect do |book|
    #say we want to target our titles
    book[:title]
end

pp titles

#["The Hobbit", "The Rubisist", "The Barbaric", "Zamblar", "The Rambostelskid"]

#select same as filter in javascript || You can use it interchangably
#Helps us iterate through an array and perform some tests of which if the results are true they'll be added in a new array


vitabu_wanafunzi = [
    { 
    title: "The Hobbit", 
    author: "J. R. R. Tolkien", 
    published: 1937,
    price:230,
    rating:8.8 },
    { 
    title: "The Rubisist", 
    author: "Tolkien", 
    published: 1970,
    price:250,
    rating:9.0 },
    { 
    title: "The Barbaric", 
    author: "J. R. R", 
    published: 2004,
    price:300,
    rating:7.5  },
    { 
    title: "Zamblar", 
    author: "Tashkishi", 
    published: 1930,
    price:900 ,
    rating:6.0 },
    { 
    title: "The Rambostelskid", 
    author: "Alnightning Gale", 
    published: 1950,
    price:780,
    rating:5.6 }
]

cheaper_books = vitabu_wanafunzi.select  do |kitabu_mwanafunzi|
                kitabu_mwanafunzi[:price] < 500
                end
pp cheaper_books

# [{:title=>"The Hobbit",
#     :author=>"J. R. R. Tolkien",
#     :published=>1937,
#     :price=>230,
#     :rating=>8.8},
#    {:title=>"The Rubisist",
#     :author=>"Tolkien",
#     :published=>1970,
#     :price=>250,
#     :rating=>9.0},
#    {:title=>"The Barbaric",
#     :author=>"J. R. R",
#     :published=>2004,
#     :price=>300,
#     :rating=>7.5}]

# find 
#Returns the first truthy test 
#That is, it returns the first result satisfied by the condition given 
#Returns nill if no results are found

highest_rate = vitabu_wanafunzi.find do |upeo|
                puts "This if for rates"
                upeo[:rating] >= 6.5
            end
pp highest_rate

# This if for rates
# {:title=>"The Hobbit",
#     :author=>"J. R. R. Tolkien",
#     :published=>1937,
#     :price=>230,
#     :rating=>8.8}


#sum || javascript equivalent of reduce
#For instance, let us find the summation of all our book prices

price_summation = vitabu_wanafunzi.sum do |bei|
                bei[:price]
                end
              
pp price_summation

#max
#Finds the highest number value
#For instance, let's find the highest rated book

highest_rated_book = vitabu_wanafunzi.max do |kupendwa|
                    kupendwa[:rating]
end
pp highest_rated_book

# {:title=>"The Rambostelskid",
# :author=>"Alnightning Gale",
# :published=>1950,
# :price=>780,
# :rating=>5.6}

#min

lowest_rated_book = vitabu_wanafunzi.min do |kupendwa|
    puts "lowest rated book"
    kupendwa[:rating]
end

pp lowest_rated_book