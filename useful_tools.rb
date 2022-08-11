   #Modules
#Modules are containers that store groups of methods
#This will happen when we continue writing more complex codes and will want to store them in containers
#what we might want to do is to take methods that are doing similar things and store them in modules

# ****** Am creating another file that will be for modules check it out *******

#Below is the syntax for a module

module Tools #name should start with Upper case
  def sayhi(name)
   puts "Hello #{name}"
  end

  def saybye(name)
   puts "Hello #{name}"
  end

end


#If I want to use the methods in my module , I will just have to type the syntax below

include Tools
Tools.sayhi("Martin")