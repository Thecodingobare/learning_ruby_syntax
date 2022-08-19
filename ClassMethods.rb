                        #Class Methods & Class Variables
require 'pry'
class People

    attr_accessor :name, :age, :birth_place
    @@all_instances = []

    def initialize(name,age,birth_place)
        @name = name
        @age=age
        @birth_place = birth_place
        @@all_instances << self
        # binding.pry
    end

    #The self below means that it is a class method & not just an instance
    def self.all_instance
        @@all_instances
    end
end

person1 = People.new("Ann", 37,"Kiambu")
person2 = People.new("Achieng",25,"Kangemi")

pp People.all_instance

#In order to access every instance of the array
#We will first set a class variable and place it in our initialization
#Then push all our created instances there


#Why Use Class Variables and Methods

#Building Class Methods and Using Class Variables

#An instance variable is responsible for holding information regarding an instance. It is a variable that is available in scope for all instance methods in the class.

#A class variable is accessible to the entire class — it has class scope. A class method is a method that is called on the class itself, not on the instances of that class.

#Class variables are typically used to store information regarding the class as a whole and class methods enact behaviors that belong to the whole class, not just to individual instances of that class.

#Example

class Album
    attr_accessor :artist, :genre, :album

    @@album_count=0
    def intialize(artist, genre,album)
        @artist = artist
        @genre = genre
        @album = album
        @@album_count +=1
    end

    def self.album_count
        @@album_count
    end
end

pp Album.album_count

#Here we are using the @@album_count class variable, inside of our #initialize method, which is an instance method. We are saying: when a new album is created, access the @@album_count class variable and increment its value by 1.

#We can access our class variables anywhere in our class: in both class and instance methods.

#Now our code should behave in the following manner:

Album.new
Album.new
Album.new

Album.album_count
  # => 3

  #In Javascript, the above should look like this:

#   class Album {
#     static albumCount = 0;
  
#     constructor() {
#       Album.albumCount++;
#     }
  
#     static count() {
#       return this.albumCount;
#     }
#   }
  
#   new Album();
#   new Album();
#   new Album();
  
#   Album.count();
#   // => 3


                        #Class Constants
#One other type of variable that can be useful when building out classes is a class constant. Class constants have a lot in common with class variable. Both types of variable:

    # Are defined in the body of the class

    # Can be accessed from within a class method

    # Can be accessed from within an instance method

    # A class constant looks a bit different than a class variable. It's defined using all capital letters, like so:

class User
  ROLES = ["Admin", "Moderator", "Contributor"]
end


#When deciding when to use a class constant or a class variable, the key distinction is that class constants are used to store data that doesn't change (is constant), while class variables are used to store data that does change.

#For example, we could define a list of valid genres for our album class using a class constant:

class Album2
  GENRES = ["Hip-Hop", "Pop", "Jazz"]

  @@album_count = 0

  def initialize(genre)
    if GENRES.include?(genre)
      @@album_count += 1
    end
  end

  def self.count
    @@album_count
  end
end

#Scope-wise, class constants can also be accessed from outside of the class using this syntax:

Album::GENRES
# => ["Hip-Hop", "Pop", "Jazz"]

#Unlike in JavaScript, declaring a constant variable in Ruby doesn't actually prevent the variable from being reassigned (though it will give a warning message):

#However, declaring a variable with a constant is still a good indicator to other developers that they shouldn't reassign the variable's value.

Album::GENRES = "not an array anymore"
# warning: already initialized constant Album::GENRES
# => "not an array anymore


#By also using class methods, class variables, and class constants, we can expand on our classes' functionality by defining behavior that's not tied to one particular instance of a class, but is related more generally to the class itself.

