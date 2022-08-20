        #Remembering Object
#show can we tell the Song class to keep track of every instance that it creates? We use a class variable.

#Let's create a class variable, @@all, that will store every instance of the Song class. Recall that @@ before a variable name is how we define a class variable.

class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

#Notice that we set our class variable equal to an empty array. Arrays are perfect for storing lists of data, so we'll use an array to store our lists of Song instances.

#Now that our class is set up to store the instances that it produces, we have to ask: how does it store these instances?

#Adding Instances to the @@all Array
#We can implement this by simply adding the new instance that gets created into the array stored in @@all inside our #initialize method.

class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

  #In #initialize we use the self keyword to refer to the new object that has just been created by #new. Remember that when #new is called, it creates a new instance of the class and then calls #initialize on that new instance. So, #initialize is technically an instance method. Inside an instance method we are in what is called method scope and self will refer to whichever instance the method is being called on.
  
  #We push self into the array that is stored in @@all. In this way, the @@all class variable will point to an ever-growing array that contains every instance of the Song class that gets created.

  #Our Code in Action

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")

Song.all
# => [#<Song:0x00007fd9910c45a0 @name="99 Problems">, #<Song:0x00007fd9900dba58 @name="Thriller">]

#Building off of .all

# With this one method defined, we can now build out more functionality in our class that involves the collection of all our songs, instead of just focusing on the song instances. For example, we could make a .print_all_songs_names class method which prints out all the names of the Songs that the class knows about:

class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all_song_names
    self.all.each do |song|
      puts song.name
    end
  end
end

# Conclusion

# We did it! We used a class variable to store a collection of instances of that class. We added new instances to this storage container every time a new instance was created with the help of the self keyword in our #initialize method. 

# Lastly, we wrote a class method to access and print out the name of each song instance stored in our class variable.