require 'pry'
my_name = "Martin Kamau"

def say_hi(name)
    "Hello #{name}"
end

puts say_hi(my_name)


def my_state (current)
    if current == "tired"
        puts "sleep"
    elsif current == "sad"
        puts "play music"
    else
        puts "Sleep and play music"
    end
    binding.pry

    my_state('tired')