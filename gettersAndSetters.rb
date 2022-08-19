class Dog

    def name=(name)
        @name=name
    end

    def name
        @name
    end

    def breed=(breed)
        @breed=breed
    end

    def breed
        @breed
    end

end

doggy = Dog.new

puts doggy.name= "German Shephard"

another_doggy = Dog.new
puts doggy.name = "Terrie"

#=================================================================================================class Person
    def name=(name)
        @name=name
    end

    def name
        @name
    end

    def job=(job)
        @job = job
    end

    def job
        @job
    end
end

name_me = Person.new
puts name_me.name = "Kamau"

puts name_me.name = "Martin Kamau"



