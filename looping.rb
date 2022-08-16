#WHILE
#Javascript Looping
let i = 0;
while (i < 5) {
  console.log("Looping!");
  i++;
}

#In Ruby
i = 0
while i < 5
  puts "Looping!"
  i += 1
end


#Until 
#Ruby

number1 = 0
until number1 = 10
    puts "Hello"
    number +=1
end

#Looping with #times

#JavaScript has a for loop, which is commonly used to run some condition a set number of times:

for (let i = 0; i < 10; i++) {
    console.log(`Looping!`);
    console.log(`i is: ${i}`);
  }


# In Ruby we have more expressive ways to run code in a loop : One such is times loop

10.times do |i|
    puts "Looping"
    puts "i is: #{i}"
end

#times is a method in the Integer class (Links to an external site.) that can be called on a number. It takes a block of code as an argument, starting with do and ending with end, and will run the code inside that block in a loop. You can optionally provide a block parameter, which in the example above, is represented by the i variable within the pipes: |i|.

# i is: 0
# i is: 1
# i is: 2
# i is: 3
# i is: 4
# i is: 5
# i is: 6
# i is: 7
# i is: 8
# i is: 9

#In addition to the do and end syntax, Ruby also allows you to use curly parentheses to define blocks. This syntax is commonly used for one-line blocks:

10.times { |i| puts "i is: #{i}" }


#Looping with each

#each method can be used with a few different data types, including arrays and objects (as we'll see later), but one common use case for the #each method is to use it with a Range (Links to an external site.):

(1..20).each do |num|
    puts num
  end

    # 1
    # 2
    # 3
    # 4
    # 5
    # 6
    # 7
    # 8
    # 9
    # 10
    # 11
    # 12
    # 13
    # 14
    # 15
    # 16
    # 17
    # 18
    # 19
    # 20

    #In JS
    for (let i = 1; i <= 20; i++) {
        console.log(i);
      }
