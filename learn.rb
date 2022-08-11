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

puts ("Enter a number: ")
num1 = gets.chomp
puts ("Enter another number: ")
num2 = gets.chomp
puts("The addition of your numbers is: " + (num1.to_i + num2.to_i).to_s)
#The addition of your numbers is: 8

# ================================================================
puts ("Enter a number: ")
num1 = gets.chomp
puts ("Enter another number: ")
num2 = gets.chomp
puts("The addition of your numbers is: " + (num1.to_f + num2.to_f).to_s)
#The addition of your numbers is: 45600.231
