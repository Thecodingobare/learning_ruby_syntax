require 'pry'


books = { 
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

    #Most methods that work on Arrays also work on hashes

    #each

  pp books.each {|book|}

#   [{:title=>"The Hobbit",
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
#     :rating=>7.5},
#    {:title=>"Zamblar",
#     :author=>"Tashkishi",
#     :published=>1930,
#     :price=>900,
#     :rating=>6.0},
#    {:title=>"The Rambostelskid",
#     :author=>"Alnightning Gale",
#     :published=>1950,
#     :price=>780,
#     :rating=>5.6}]


book =   { 
    title: "The Rambostelskid", 
    author: "Alnightning Gale", 
    published: 1950,
    price:780,
    rating:5.6 }

    

   # book.each {|b| binding.pry}

   #pp book.each_key{|b| binding.pry}

   book.each_value do |b|
    # binding.pry
    b
   end
   #All the methods

   #book.each_key{|b| binding.pry}
   #book.each_value{|b| binding.pry}
   #puts book.keys
   #puts book.values
   #author = book.select{|k,v| v==="Alnightning Gale"}
   #puts book.include?(:price)
   #puts book.index("John")
   #book.to_a ====turns it into an array


Narray = book.to_a
pp Narray

[[:title, "The Rambostelskid"],
[:author, "Alnightning Gale"],
[:published, 1950],
[:price, 780],
[:rating, 5.6]]

