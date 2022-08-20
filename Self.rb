


class Cat
    def showing_self
      puts self
    end
  end


fido = Cat.new
fido.showing_self
#<Cat:0x00005623727a80c8>


#===============================
class Dog
    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def bark
      "Woof!"
    end
  
    def get_adopted(owner_name)
      self.owner = owner_name
    end
  
  end


  fido = Dog.new("Fido")
fido.get_adopted("Sophie")
fido.owner
# => "Sophie"


                                    #Implicit Self
                                    
#We can use the same technique to refer to any other instance methods in the class as well. For example, if we wanted our dog to bark when they get adopted, we could refactor our code as follows:

class Dog
    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def bark
      puts "Woof!"
    end
  
    def get_adopted(owner_name)
      self.bark # calls the Dog#bark method
      self.owner = owner_name
    end
  
  end


#  Now, when we call the #get_adopted method on a dog, it'll both bark and get a new owner assigned:

fido = Dog.new("Fido")
fido.get_adopted("Sophie")
# "Woof!"
# => "Sophie"

            #Using the Implicit Receiver

#In Ruby, there is one other technique we can use to call other instance methods from each other within a single class. In the example above, we are using the explicit receiver syntax by writing self.bark, where self is receiving the #bark method.

#However, we can also use the implicit receiver syntax, and omit the self keyword when calling other instance methods:


class Dog
    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def bark
      puts "Woof!"
    end
  
    def get_adopted(owner_name)
      bark # implicit receiver will be self
      self.owner = owner_name
    end
end  


#When the Implicit Receiver Doesn't Work


#You'll notice in this example, our #get_adopted method still refers to the self.owner= method with the explicit receiver syntax. Why is this? Well, let's see what this method would look like without the explicit self:


class Dog
    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def bark
      puts "Woof!"
    end
  
    def get_adopted(owner_name)
      bark # implicit receiver will be self
      owner = owner_name
    end
  
  end


  #In this case, the line owner = owner_name is treated as a variable assignment instead of a method call. Remember, the setter method #owner= allows some syntax sugar when you're using it (which is why we don't have to write dog.owner=("Sophie") when calling that method). Because of this syntax sugar, however, we're not able to use the implicit self syntax with setter methods.
    

  class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist 
    end 

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

artist_one = Song.new("Teveva","Timam","Gospel")
pp artist_one

pp Song.count
#1

pp Song.genres
#["Gospel"]
pp Song.artists
#["Timam"]
pp Song.genre_count
#{"Gospel"=>1}
pp Song.artist_count
#{"Timam"=>1}