=begin
This is another way to put a comment in ruby

=end

=begin


# #variable
# name = "Martin_Kamau"
# age = "25"

# puts ("There once was a king called " + name + " and in 2022, he began learning how to code at age " + age)

# #There once was a king called Martin_Kamau and in 2022, he began learning how to code at age 25

# #String Methods

# #1. .upcase()
# puts("Hello world".upcase())
# #HELLO WORLD

# #2. .downcase()
# puts ("HELLO WORLD,HERE I COME".downcase())
# #hello world,here i come

# #3. .strip()
# #Removes leading and trailing white spaces
# phrase = "     I have a space before \"I\" and also after period \".\" .           "
# puts(phrase)
# #     I have a space before "I" and also after period "." .    
# remove_white_spaces = phrase.strip()
# puts(remove_white_spaces)
# #I have a space before "I" and also after period "." .

# #4. length()
# #Checks the length of the characters in a string
# puts(phrase.length())
# #69

# puts(remove_white_spaces.length())
# #53

# #5. .include?
# #Checks if a certain string/phrase is contained in a string

# puts(phrase.include? " ")
# #true

# #6. []
# #Accessing characters

# puts(remove_white_spaces[0])
# #I

# #7. [0,3]
# #It can take a 2nd argument where we specify the number of character we would like to have. For instance, [0,3] will give us the 1st to the 2nd character but not 3rd

# puts(phrase[0,9])
# #     I ha

# #8. .index()
# #Tells us what specific index our given character starts at

# puts(phrase.index(" "))
# #0

#          #B) MATH AND NUMBERS
# puts (5.000)
# #5.0

# puts 2**8
# #256

# puts 10%5
# #0

# num = 15
# puts (num)
# #15

# #Convert number to a string using .to_s

# puts (num.to_s + " divided by " + 3.to_s + " is equal to 5.")
# #15 divided by 3 is equal to 5.
 

#                             #Number Methods
# num = -56.0440303030

# #1 .abs()

# puts(num.abs())
# #56.044030303

# #2 .round()
# puts(num.round())
# #-56

# # .ceil() & .floor()
# # .ceil will take a higher number while .floor will take a lower number

# puts(num.ceil())
# #-56

# puts(num.floor())
# #-57

#                             #Math Class
# # You can have access to things like sine , cosine, tangents
# puts (Math.sqrt(64))
# # 8.0

# puts( Math.log(64))
# #4.1588830833596715

#                                   #Getting User Input
# #gets
# #Allows a user to enter a specific set of instruction 

# puts("What is your name?")

# #We will store the user input in a variable as demonstrated below
# name = gets
# puts ("Hello " + name + " you are cool!")
# # Hello Martin Kamau
# # you are cool!
# #When we hit enter ruby takes it a new line character 
# #To avoid that we use .chomp

# puts ("How old are you?")
# age = gets.chomp
# puts("You are " + age + " years old.")


                        #Building a calculator
#In order to use a calculator in addition mode.
#We need to convert the numbers into an integer by using .to_i when we use "+" addition 
#To convert to float we use .to_f

# puts ("Enter a number: ")
# num1 = gets.chomp
# puts ("Enter another number: ")
# num2 = gets.chomp
# puts("The addition of your numbers is: " + (num1.to_i + num2.to_i).to_s)
# #The addition of your numbers is: 8

# # ================================================================
# puts ("Enter a number: ")
# num1 = gets.chomp
# puts ("Enter another number: ")
# num2 = gets.chomp
# puts("The addition of your numbers is: " + (num1.to_f + num2.to_f).to_s)
#The addition of your numbers is: 45600.231


#                                  #ARRAYS
# my_array = Array["Martin",25,false]
# puts(my_array[0] + " is " + my_array[1].to_s + " years old and dating status is " + my_array[-1].to_s)
# #Martin is 25 years old and dating status is false


#We can initialize an empty array by the key word .new

friends = Array.new

friends[0]= "John"
friends=["Elvis","Kayotti"]
puts(friends)
# Elvis
# Kayotti

                                 #Basic Array Methods
my_array2 = Array["Hello", "Watsapp","Regular","number"]

my_array2.length()
my_array2.sort()
my_array2.include? "Hello"

puts(my_array2.sort())


                                    #Hashes
#More like objects
my_object = {
 "name" => "Martin Kamau",
 :age  => "25",
 "education" => "Kenyatta University",
 3 => "Kahawa Sukari"
}

puts my_object
#{"name"=>"Martin Kamau", "age"=>"25", "education"=>"Kenyatta University"}

#Accessing the values
puts my_object["name"]
# Martin Kamau
puts my_object[:age]
#25

puts my_object[3]
#Kahawa Sukari


                       #Methods
#Just like functions in Javascript

def sayhi()
  puts "Hello User"
end

sayhi()
#Hello User

def tell(name, age=2)
  puts ("Hello " + name + " you are " + age.to_s + " years old")
end

tell("Martin Kamau", 25)
# Hello Martin Kamau you are 25 years old


        #Using Return
# The method below cubes a number

def cube(num)
    puts "This will be executed"
    return num**3
    puts "This will not be executed"

end

cube1= cube(3)
cube2 = cube(4)

puts(cube1)
puts(cube2)


                    #If statements

isGenius = true;

if isGenius
  puts "You are definitely a coder on steroids"

else
  puts "You are soon becoming a code god"

end

                    #using and
ruby_language = true
react = true

if ruby_language and react
  puts "You are a master in react and ruby"
else
  puts "You have to learn ruby and react"
end

                  #using or
javascript_language = true
java = false

if javascript_language or java
  puts "You are a master in either java or javascript"
else
  puts "You have to learn java or javascript"
end

                #Complex example
ismale = false
istall = false


if ismale and istall
  puts "You are a tall male"

elsif ismale and !istall
 puts "You are male but short"
elsif !ismale and istall
  puts "You are a tall female"
else 
  puts "You are neither male nor tall"
end


                      #Comparison operator
def largest(num1,num2,num3)
  if num1 >=num2 and num1 >=num3
    puts num1
  elsif num2 >= num1 and num2 >=num3
    puts num2
  else num3
  end
end

puts(largest(9,3939,588499339399))
#588499339399


                        #Case Expressions
#More like switch statements in Javascript

def tell_full_expression(nickname)
  name = " "
case nickname
when "Martoh"
  name = "Martin"
  #In short when our parameter, the case (nickname) is given a certain value, we want to set our empty initailized variable name to a certain string
when "Elvo"
  name = "Elvis"
when "Tash"
  name= "Natasha"
when "Moji"
  name = "ShortBaba"
else
  name = "Currently not present"
end
end

puts(tell_full_expression("Martoh"))
#Martin


                        #Looping
                        # While loops
number = 1
while number <=5
  puts("I am number:  " + number.to_s + " and am less or equal to 5")
  number +=1
end

# ================================================

# # Guessing Game

# secret_name = "Sheena"
# guess_name = ""

# while guess_name != secret_name
#   puts "Enter a guess of the name of a best friend girl in first year: "
#   guess_name = gets.chomp()
# end

# puts "You won"

#The above gives unlimited chances
#To limit the chances


guess_age = 25
guess = ""
guess_limit = 3
guess_count = 0
out_of_guesses = false

while guess != guess_age and !out_of_guesses
  if guess_count < guess_limit
  puts ("Guess my age: ")
  guess = gets.chomp()
  guess_count += 1
  else
    out_of_guesses = true
  end
end

 if out_of_guesses
  puts "Sorry! Try again later!"
 else
  puts ("Now they always say congratulations")
 end


                    # For Loops
my_friends = Array["Mike", "Tiberius", "Elvis", "Diana","Mary"]

for friend in my_friends
  puts friend
end
# Mike
# Tiberius
# Elvis
# Diana
# Mary

# also

my_friends.each do |friend|
  puts friend
end 
# Mike
# Tiberius
# Elvis
# Diana
# Mary

          #Looping through a number
for index in 0..5 #MEANS FROM 0 TO 5
  puts index
end

# 0
# 1
# 2
# 3
# 4
# 5

10.times do |number|
  puts number
end

# 0
# 1
# 2
# 3
# 4
# 5
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9


                  #Exponent Method
# This demonstrates how to use looping in numbers
def pow (base_num,pow_num)
  result = 1
  pow_num.times do |number|
  result = result * base_num
  end
  return result
end

puts pow(2,3)
#8

#Only works for positivie numbers

=end

                # Reading Files
#This is how we can read files in ruby
# after File.open("the location:it might be in the D drive(anywhere in the computerd) ", the mode which is read: r)

# The |file| at the end of line 454 is what we want the file to be stored as

# File.open("employee.txt","r") do |file|
 
#   puts file

# end
##<File:0x000002affcc69e50> =this is how our file is stored in ruby

# File.open("employee.txt","r") do |file|
 
#   puts file.read()
#   #This is how we read the data in our file

# end

=begin

data ={        
 name: "Jason",
 age : 25,     
 country: "Kenya"
}

=end

# #We can also perform various methods in file 
# File.open("employee.txt","r") do |file|
 
#   puts file.read().include? "name"
#   #This is how we read the data in our file

# end
# # true

# #We can read the lines of a file this way

# File.open("employee.txt","r") do |file|
 
#   puts file.readline()
#   puts file.readline()
#   #This is how we read each line of the data in our file

# end
# # data
# # ={

# #We can also read the characters of a line
# File.open("employee.txt","r") do |file|
 
#   puts file.readchar()
#   puts file.readchar()
#   puts file.readchar()
#   puts file.readchar()

# end
# =begin

# d
# a
# t
# a 

# =end

# #We can also loop through the file and each time do a specific thing

# File.open("employee.txt","r") do |file|
#  for line in file.readlines()
#   puts line
#   #Here we can basically do anything we want with each line
#  end

# end

# =begin

# data
#  ={
#  name: "Jason",
#  age : 25,
#  country: "Kenya"
# }

# =end


#We can also store the file in a variable instead and do everything we have done above
#But we should make sure that we have closed the file

my_file = File.open("employee.txt", "r")

for line in my_file.readlines()
  puts line
end
my_file.close()



                                  #Writing To Files
# Appending to file

File.open("employee.txt", "a") do |file|
  file.write("\ncourse : Economics")
end

#Writing to files "w"
# We are able to write to file, modify and delete

# File.open("employee.txt", "w") do |file|
#   file.write("\ncourse : Economics")
# end

#IF we run the above code we will basically be overwriting our existing file


#We can create a new file
File.open("index.css", "w") do |file|
  file.write("body\n{\nbox-sizing:border-box\n}")
end

#Reading and writing to file

File.open("employee.txt", "r+") do |file|
  file.readlines(-1)
  #file.readlines() specifies exactly where we want our content to go 
  file.write("\ncurrently_learning: Programming")

end



                              #Error Handling
#Any code that you might think will throw an error, we can handle it using the:

#begin
#rescue
#end

#This way our program won't break

#Let's do a zero division error

begin
  num = 10 / 0
  rescue
    puts "You can not divide a number by 0 "
end

#But say we have multiple codes
#We can cat the error with specificity
#Example

lucky_numbers = [1,2,4,5,6,7,8,9]

begin
  lucky_numbers["one"]
  num = 25/0
  
rescue TypeError => e # here unlike our 2nd way to handle error, we're just storing our error in a variable and letting our program give us the specific error
  puts e
  #no implicit conversion of String into Integer
  rescue ZeroDivisionError
    puts "You cannot divide a number by zero"
end

  

                          #Classess & Objects
#With classes, we're basically defining what our objects should look like
#It is like a template or blue print for objects (objects like stuff in real world, a person is an object, a car is an object e.t.c)

#Example: a Book should have a title, author, page

class Book
  attr_accessor :title, :author, :pages
end

#Now we can create individual books

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

puts book1.title
#Harry Potter

book2 = Book.new()
puts book2.title = "Lord of the Rings"


                    #Initialized Methods in Ruby Classes
#To reduce the code above when creating objects from classes.
#We can do the following:

class Person 
  attr_accessor :name, :height, :skin_color

  def initialize(name, height,skin_color) 
    @name = name
    @height=height
    @skin_color =skin_color
  end

end

person1 = Person.new("Martin Kamau", "5.6 ft", "brown")
puts person1.name
#Martin Kamau



                    #Object Methods/Instance Methods

class Student
  attr_accessor :name, :gpa, :course
  
  def initialize(name, gpa, course)
    @name = name
    @gpa = gpa
    @course = course
  end


  def hasHonors()
    if @gpa >= 3.5
      return true
    end
      return false
    end

end

student1 = Student.new("Martin Kamau",5.3,"Software Development")

puts student1.gpa
#5.3

puts student1.hasHonors
#true

                        #Building A Quiz
              
#We will use whatever we hav learnt so far.

class Question
   attr_accessor :prompt, :answer

   def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
   end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
  Question.new(p1, "a"),
  Question.new(p2,"c"),
  Question.new(p3,"b")
]


def run_test(questions)

answer = ""
score = 0

for question in questions

  puts question.prompt
  answer = gets.chomp()
  if answer == question.answer
    score += 1
  end
end
puts("You got " + score.to_s + "/" + questions.length().to_s)
end
run_test(questions)


                      #Inheritance
#Inheritance in ruby allows us to extend the functionality of one class into other classes

#Example

class KenyanChef 

  def make_kachumbari
    puts "Makes kachumbari na kafirifiri kwa umbari"
  end

  def makes_mutura
    puts "Makes mutura design ingine moto sana"
  end

  def makes_kahawa
    puts "Makes Kahawa that's fire"
  end
end

#For another class to inherit the above class we do this

class AmericanChef < KenyanChef
  #We can also override methods
  def makes_mutura
    puts "Mutura haijapita ya Mkenya, if you know what am saying"
  end
end

chief1 = KenyanChef.new()
puts chief1.makes_kahawa
#Makes Kahawa that's fire

chief2 = AmericanChef.new()
chief2.makes_kahawa
#Makes Kahawa that's fire

#Proof we can override whatever is inherited

chief3 = KenyanChef.new()
puts chief3.makes_mutura

#Makes mutura design ingine moto sana


chief4 = AmericanChef.new()
puts chief4.makes_mutura

#Mutura haijapita ya Mkenya, if you know what am 

                  #Modules
#Modules are containers that store groups of methods
#This will happen when we continue writing more complex codes and will want to store them in containers
#what we might want to do is to take methods that are doing similar things and store them in modules

# ****** Am creating another file that will be for modules check it out *******

