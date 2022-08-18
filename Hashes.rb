#HASHES

#Creating a Hash

my_hash = { key1: "value1", key2: "value2" }
my_hash[:key2]
# => "value2"

#Accessing a key that does not exist returns nil

my_hash[:key3]
# => nil

#You can use [] to a sign a new value to a key:
my_hash[:key2] = 42
my_hash
# => {:key1=>"value1", :key2=>42}

#Assigning new key-value pair:
my_hash[:key3] = true
my_hash
# => {:key1=>"value1", :key2=>42, :key3=>true}

#Unlike JavaScript, you cannot use the dot notation to access keys on hashes — only the bracket notation will work:

#This is because dot notation has a different meaning in Ruby — dot notation is only used for calling methods on objects, which is why the code above throws a NoMethodError.

#You can also create hashes with Strings for keys:

{ "i'm a key" => "i'm a value!", "key2" => "value2" }

#This syntax is known as the hash rocket syntax, and is useful if you need String keys for Symbols; however, in general, using Symbols for keys is preferred.

#Like JavaScript, you can also create nested hashes in Ruby.

user = {
    name: "Duane",
    address: {
      street: "123 Fake Street",
      city: "Queens",
      state: "NY"
    }
  }
  user[:address][:city]
  # => "Queens"


  #Common Hash Methods
  # .delete method

pizza_toppings = { cheese: true, topping1: "mushroom", topping2: "sausage" }
pizza_toppings.delete(:topping2)
pizza_toppings
# => {:cheese=>true, :topping1=>"mushroom"}

#ACCESSING KEYS AND VALUES

pizza_toppings.keys
# => [:cheese, :topping1]
pizza_toppings.values
# => [true, "mushroom"]

# .empty? method
#Checks if there are no key-value pairse defined on the hash:

pizza_toppings.empty?
# => false
#means there exists key-value pairs

{}.empty?
# => true
#means there is absence of key-value pair

# .merge method
#Joins together multiple hashes;

more_toppings = { topping2: "peppers", topping3: "onions" }
pizza_toppings.merge(more_toppings)
# => {:cheese=>true, :topping1=>"mushroom", :topping2=>"peppers", :topping3=>"onions"}