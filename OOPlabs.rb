# A NOTE ON NOTATION

#ClassName#method_name: represents an instance method that can be called on the class

#ClassName.method_name: represents a class method that can be called on the class

#For example, Person#name is an example of an instance method, that we can call on an instance of a class:

class Person
    def name
      @name
    end
  end

 # We can also define this particular instance method using a macro (which creates the getter method for us):
 
 class Person
    attr_reader :name
  
  end

 # Person.new is an example of a class method (remember, to create a new instance of the class, we call ClassName.new, which then calls the instance method ClassName#initialize).
