puts "Hello world!"
puts [1,2,4]
p [1,2,4]

## When using puts on something that isn't already a string, Ruby will coerce the data to a string by calling the .to_s method. 

p [1,2,3]
##The p method will output the data in a nicer format by calling the .inspect method on our data.

pp [{ id: 1, hello: "World" }, { id: 2, hello: "Ruby" }, { id: 3, hello: "Moon" }, { id: 4, hello: "Learner" }]

##Ruby has one more method, pp, for "pretty-printing" complex data, such as nested arrays and hashes (the Ruby equivalent of a JavaScript object):

                        #Exploring Ruby with IRB
##Ruby comes with a tool called IRB (Interactive Ruby) for running a Ruby REPL (read-evaluate-print-loop) in the terminal, which provides similar functionality to the browser console that you're familiar with from JavaScript. Using IRB is a great way to quickly test out some code, or check your syntax, without needing to run an entire application.

#To use IRB, go into the terminal and enter irb:

##This gives you a prompt where you can enter Ruby code. Try entering in puts "Hello IRB":

 #puts "Hello IRB"
 Hello IRB
  nil

#   first_number = 7
#   7
#   first_number
#   7
#   puts first_number
#  7
#   nil

##In the code above, we've declared a local variable called first_number and assigned it a value of 7. Note the difference between just entering first_number and entering puts first_number: in the first case, the return value is 7, in the second case, the return value is nil. Using the correct return value will become more important once we start writing methods, so remember: the puts method always returns nil

#You can exit IRB by typing exit, or pressing ctrl + d.


#==================================
#Four Common Error Types
#Name Errors

#Name errors are caused when a given name is invalid or undefined. Whenever the Ruby interpreter eencounters a word it doesn't recognize, it assumes that word is the name of a variable or a method. If that word was never defined as either a variable or a method, it will result in a name error. 

#Example
#  irb
# a_variable
# NameError (undefined local variable or method `a_variable' for main:Object)
#  a_variable = 7
#  7
#  a_variable
#  7

#Trying to access a_variable before assigning it a value results iner a NameError, which we can fix by assigning it some value.


# 2. Syntax Error
#Syntax errors are pretty self-explanatory: they're the result of incorrect syntax. Thankfully, they're usually followed by a guess about the location of the error. For instance

#Type Errors
#When you try and do a mathematical operation on two objects of a different type, you will receive a TypeError. For example if you try and add a string to an integer, Ruby will complain.

#Division Errors
#A DivisionError is are caused when a given number is divided by 0.

#In order to know the type of a variable, we use the .class method:

puts "Martin".class
#string