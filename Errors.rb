#Ruby has a hierarchy of error, or Exception, classes, all of which inherit from the Exception class.


        # NoMethodError
        # ArgumentError
        # SyntaxError


#By defining custom error messages and handling, we can show other developers a specific error message in the event they use some of our code incorrectly. 


=begin

Building a Custom Error
To build a custom error, we define an error class that inherits from the Exception class. Which class your custom error inherits from will likely depend on the situation in which you want to raise it. However, it is usually a pretty safe bet to inherit your custom error class from the StandardError class. For more info on error class hierarchies, you can review this chart of error class inheritance:

Exception
 NoMemoryError
 ScriptError
   LoadError
   NotImplementedError
   SyntaxError
 SignalException
   Interrupt
 StandardError
   ArgumentError
   IOError
     EOFError
   IndexError
   LocalJumpError
   NameError
     NoMethodError
   RangeError
     FloatDomainError
   RegexpError
   RuntimeError
   SecurityError
   SystemCallError
   SystemStackError
   ThreadError
   TypeError
   ZeroDivisionError
 SystemExit
 fatal

=end


=begin






Defining Our Error Class
Let's look at the example of our Person class and its #get_married method. In lib/custom_errors.rb, we have the following code:

class Person
  attr_accessor :name, :partner

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
As it currently stands, we would receive a NoMethodError if we try to pass #get_married an argument of anything that is not an instance of the Person class (that is, a class without a #partner= method defined).

For example, at the bottom of our lib/custom_errors.rb file, we're trying to tell Beyonce to #get_married to "Jay-Z". The problem is that "Jay-Z" is a string, not an instance of the Person class.

Run the code in the lib/custom_errors.rb file with the ruby lib/custom_errors.rb command. You should see the following output:

custom_errors.rb:10:in `get_married': undefined method `partner=' for "Jay-Z":String (NoMethodError)
That's pretty informative as errors go. However, we're here to learn about raising our very own custom errors. So, for the sake of this example, let's say we are not satisfied with this error. Let's make our own!

Step 1: Defining the custom error class
Let's define a custom error class, PartnerError that inherits from StandardError:

class PartnerError < StandardError
end
Okay, we have the code for our custom error class right here, but where does it belong in our application? We have a couple of options. We can simply place the above code inside of the Person class. We could define it outside of our Person class. Or, we can create a module and include that module inside the Person class. For now, we're going to include our custom error class inside of our Person class:

class Person
  # rest of class...

  def get_married(person)
    self.partner = person
    person.partner = self
  end

  # Add the following two lines:
  class PartnerError < StandardError
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
Now we're ready to use our custom error inside our #get_married method.

Step 2: Raising our custom error
We need to tell our program to raise our brand new PartnerError when the argument passed into the #get_married method is not an instance of the Person class. We can do that with the raise keyword. Place the following code in your #get_married method:

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      raise PartnerError
    end
  end

  class PartnerError < StandardError
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
Now, go ahead and run the file again. This time you should see the following in your terminal:

custom_errors.rb:11:in `get_married': Person::PartnerError (Person::PartnerError)
We did it! We raised our very own custom error. However, our program is still broken. Notice that the puts beyonce.name line at the bottom of our file won't run because it follows the #get_married method call, and we called that method in such a way as to raise an error. If only there was a way for us to rescue our program when such an error is raised and allow it to keep running...

Custom Error Handling
We can achieve the above goal via something called rescuing. Before we look at how to rescue the errors we raise and allow our program to continue to run, let's think about the desired behavior of our rescue.

Step 1: Writing a Custom Error Message
Of course we want our program to continue running after we raise the error. It would also be nice to output a custom error message when the error is raised. Let's add a message to our PartnerError class:

class PartnerError < StandardError
  def message
    "you must give the get_married method an argument of an instance of the person class!"
  end
end
Now we have a nice, informative, custom error message that will make it really clear to our users what went wrong if they encounter this error. Now we're ready to implement our rescue.

Step 2: Implementing the rescue
The basic pattern of error rescuing is as follows:

begin
  raise YourCustomError
rescue YourCustomError
end
Let's implement this code in our #get_married method:

def get_married(person)
  if person.is_a?(Person)
    self.partner = person
    person.partner = self
  else
    begin
      raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
  end
end
If the object passed into the method as an argument is not an instance of the Person class, we will begin our error handling. First, we raise our PartnerError, then we rescue our PartnerError. The rescue method creates an instance of the PartnerError class and puts out the result of calling message on that instance.

=end


#At this point, the code in custom_errors.rb should look like this:

class Person
    attr_accessor :partner, :name
  
    def initialize(name)
      @name = name
    end
  
    def get_married(person)
      if person.is_a?(Person)
        self.partner = person
        person.partner = self
      else
        begin
          raise PartnerError
        rescue PartnerError => error
          puts error.message
        end
      end
    end
  
    class PartnerError < StandardError
      def message
        "you must give the get_married method an argument of an instance of the person class!"
      end
    end
  end
  
  beyonce = Person.new("Beyonce")
  beyonce.get_married("Jay-Z")
  puts beyonce.name






