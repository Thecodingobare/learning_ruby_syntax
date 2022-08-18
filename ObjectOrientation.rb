#Object Oriented Programming

#An object-oriented approach to application development makes programs more intuitive to design, faster to develop, more amenable to modification, and easier to understand.

#Classes & Instances


#OOP

#A local variable that is defined inside one method cannot be accessed by another method:

#In order to get around this limitation, we can use instance variables inside our Ruby classes.

#An instance variable is a variable that is accessible in any instance method in a particular instance of a class.


# class Dog

# def name= (dog_name)
#     @this_dogs_name = dog_name
# end

# def name
#     @this_dogs_name
# end

# end

# # german_shephard = Dog.new
# # german_shephard.name = "Mbwa kali"
# # puts german_shephard.name

# #In Object-Oriented Ruby, we want to be able to set attributes on the instances of our classes. To do this, we create setter methods, which take an argument and set the instance variable equal to that value:

# #We also want those objects to "know" the values of their attributes. So we also create a getter method that will return the value of the instance variable:

# #Now let's create our getter and setter methods

# class Dog
#     #This is our setter
#     def name=(value)
#         @name=(value)
#     end
#     #This is our getter
#     def name
#         @name
#     end
# end

# odie = Dog.new
# odie.name = "Odie"
# puts odie.name
# #Odie

