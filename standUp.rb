require 'pry'
cat = {name: "Rose",
        color: "White",
        age: 3,
        is_sick: false,
        owner1:{name:"Bernard", age:26},
    owner2:{name:"Bonface",age:27}}


#To display the name "Rose"
# puts cat[:name]
# "Rose"

#To display owner1, :name
# puts cat[:owner1][:name]
#Bernard

#To loop

#cat_array = cat.to_a
# pp cat_array

# cat_array1 = cat_array.each do |key,value|
#         puts "#{key} #{value}"
#         binding.pry
#          "Looped through"

#         end
# pp cat_array1


cat.each do |attribute, value|
    if attribute == :owner1 || attribute == :owner2
     puts value[:name]
    end
 end

# Bernard
# Bonface
