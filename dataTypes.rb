#Integer
#Float
#Boolean
#String
#Symbol
#Often start with :
#Example - :book
#Hashes
#Arrays

#In ruby 
#lower case variable assignment
#For instance;
cat = "Meow"
#can be overwritten
#For instance
cat = "Kittens"
#Upper case variable assignment act like constant in Javascript
#Therefore cannot be overwritten
DOG = "Bark"

#In ruby 
#To declare a global variable we use dollar sign
$food = "All meals"
#Not advisable to use not unless it is a must

#COMMON DATA TYPES 

#Strings
#You can also create a new string by using the String class constructor method (though it's not common you'd need to):

String.new("I'm a string")

#String interpolation in ruby
#If you want use string interpolation in Ruby, use double quotes like so:

# Ruby
dog_name = "Lucy"
puts "Say hello to my dog #{dog_name}"

#More string methods
"hello"
# => "hello"
"hello".upcase
# => "HELLO"
"HELLO".downcase
# => "hello"
"hello".capitalize
# => "Hello"
"hello".reverse
# => "olleh"
"hello" + "world"
# => "helloworld"
"hello" * 3
# => "hellohellohello"

#You'll often hear it said that "in Ruby, everything is an object". All of the methods that we called on strings above are available because the string literal "hello" is an instance of the String class.

#Calling the methods method on any Ruby object will display a list of all the methods that object responds to (you'll see :upcase, :downcase, :reverse and more in that list):

"hello".methods
# => [:unicode_normalize, :unicode_normalize!, :ascii_only?, :to_r, :encode, :encode!, ...

#A NOTE NOTATION
#In Ruby, there are two different kinds of methods: instance methods and class methods. You won't encounter class methods until the section on object-oriented programming, but technically all the methods we're writing now are instance methods. An instance method means a method that's called on an instance (one unique object) of a class.

#In Ruby, we use the # at the beginning of a method when referring to it in documentation to indicate that it's an instance method, and the . at the beginning to indicate class methods:

#: instance method
#.: class method


#Numbers
#number methods
7.5.floor
# => 7
7.5.ceil
# => 8
10.next
# => 11

#You can convert other some data types to integers or floats with the #to_i and #to_f methods:

"1".to_i
# => 1
"1.1".to_i
# => 1
"1.1".to_f
# => 1.1

#Unlike JavaScript, Ruby won't convert an Integer to a Float when performing math operations, unless one side of the operation is already a Float:
4 / 3
# => 1
4 / 3.0
# => 1.3333333333333333
4 / 3.to_f
# => 1.3333333333333333

#Nil
#In Ruby, there is one special value that represents the absence of a value, nil. You've already seen nil as the return value of the #puts method:

puts "I return nil"
# I return nil
# => nil

#Unlike JavaScript, Ruby won't let you create a variable without assigning a value. You must explicitly assign a value of nil if you want an "empty" variable:

no_value = nil
# => nil

#Booleans

#Ruby, like JavaScript, has the concept of "truthy" and "falsy" values as well: values which, when coerced to their equivalent boolean value, or evaluated as part of a conditional statement, return either true or false:

!!true
# => true
!!false
# => false
!!1
# => true
!!0
# => true
!!""
# => true
!!nil
# false

#In Ruby, only nil and false are falsy values. Everything else is truthy, even 0 and empty strings.
#Contrast this with JavaScript, where null, undefined, false, 0, NaN, and "" are all falsy values:

#Symbols
#A symbol is a representation of a piece of data. Symbols look like this :my_symbol. You write symbols by placing a : in front of the symbol name:

:this_is_a_symbol

#If you make a symbol, :my_symbol, and then use that symbol later on in your code, your program will refer to the same area of memory in both cases. This is different from, for example, strings, which take up new areas of memory every time they are used:

:my_symbol.object_id
# => 2061148
:my_symbol.object_id
# => 2061148
"my string".object_id
# => 200
"my string".object_id
# => 220


#The #object_id method returns an internal identifier used by Ruby representing the object's identity; we can see from the code above that the same symbol always returns the same object_id while the same string does not. That means they’re referencing different objects in memory, since Ruby allocates new memory for each string.

#While JavaScript also has a Symbol data type, you'll find that symbols are used much more frequently in Ruby than they are in JavaScript. One use case for symbols that we'll see shortly is as keys on a hash (the Ruby equivalent of a JavaScript object).

#Arrays
#Ruby, like JavaScript, has an Array class for storing ordered lists of data. You can store any type of data in an array.

#There are a number of ways to create an array. Just like with creating strings, you can use the literal constructor or the class constructor.

Array.new
# => []

#ARRAY METHODS
[1, 3, 400, 7].length
# => 4
[5, 100, 234, 7, 2].sort
# => [2, 5, 7, 100, 234]
[1, 2, 3].reverse
# => [3, 2, 1]

#Hashes
#Ways of writing Hashes
#1. 
{ key1: "value1", key2: "value2" }

#2.
#Using the JSON-style syntax above will create a hash with Symbols for keys. To access data from this hash, you can use the bracket notation and pass in the symbol for the key you are trying to access:

my_hash = { key1: "value1", key2: "value2" }
my_hash[:key2]
# => "value2"

#You can also create hashes with Strings for keys:

{ "i'm a key" => "i'm a value!", "key2" => "value2" }

#Last but not least, you can also use the Hash.new syntax (Links to an external site.), which would create an empty hash, {}:
Hash.new
# => {}

#=============================================================================
#                 VARIABLE TYPES                                             =
#                                                                            =
#=============================================================================
# Local variables: must start with a lowercase letter or an underscore (_): name = "Lucy"
# Global variables: must start with a dollar sign ($): $name = "Lucy"
# Instance variables: must start with an at symbol (@) @name = "Lucy")
# Class variables: must start with two at symbols (@@) (@@name = "Lucy")

#You should almost never need to use global variables in your code. Having a lot of global variables makes your code unpredictable and challenging to debug, so you should reserve them for special cases (like application-wide configuration).


$evil_monster = "Bowser"

def princess_peaches_castle
  puts "#{$evil_monster} is trying to kidnap Princess Peach!"
end

princess_peaches_castle()
#Bowser is trying to kidnap Princess Peach!