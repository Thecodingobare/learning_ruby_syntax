#               if/else
#In Javascript we do it like this:

let dog = "cuddly";
let owner;

if (dog === "hungry") {
  owner = "Refilling food bowl.";
} else if (dog === "thirsty") {
  owner = "Refilling water bowl.";
} else if (dog === "playful") {
  owner = "Playing tug-of-war.";
} else if (dog === "cuddly") {
  owner = "Snuggling.";
} else {
  owner = "Reading newspaper.";
}

#In Ruby
dog = "cuddly"

if dog == "hungry"
  owner = "Refilling food bowl."
elsif dog == "thirsty"
  owner = "Refilling water bowl."
elsif dog == "playful"
  owner = "Playing tug-of-war."
elsif dog == "cuddly"
  owner = "Snuggling."
else
  owner = "Reading newspaper."
end


#In ruby unlike Javascript
#Statements have a return value which means we could refactor code above as follows

dog = "cuddly"

owner = if dog == "hungry"
          "Refilling food bowl."
        elsif dog == "thirsty"
          "Refilling water bowl."
        elsif dog == "playful"
          "Playing tug-of-war."
        elsif dog == "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end



        #unless statements
#In addition to the if keyword, Ruby also has the unless keyword, which acts as the opposite of if:

timer = 15

unless timer == 0
  puts "Still cooking"
end

#You could write the equivalent with an if statement and a negative condition:

timer = 15

if timer != 0
  puts "Still cooking"
end

#case Statements

#In javascript

let dog = "cuddly";
let owner;

switch (dog) {
  case "hungry":
    owner = "Refilling food bowl.";
    break;
  case "thirsty":
    owner = "Refilling water bowl.";
    break;
  case "playful":
    owner = "Playing tug-of-war.";
    break;
  case "cuddly":
    owner = "Snuggling.";
    break;
  default:
    owner = "Reading newspaper.";
    break;
}


#In Ruby

dog = "cuddly"

case dog
when "hungry"
  owner = "Refilling food bowl."
when "thirsty"
  owner = "Refilling water bowl."
when "playful"
  owner = "Playing tug-of-war."
when "cuddly"
  owner = "Snuggling."
else
  owner = "Reading newspaper."
end

#In Ruby 
#case statements also have return value
#So we can modify it like this

dog = "cuddly"

owner = case dog
        when "hungry"
          "Refilling food bowl."
        when "thirsty"
          "Refilling water bowl."
        when "playful"
          "Playing tug-of-war."
        when "cuddly"
          "Snuggling."
        else
          "Reading newspaper."
        end

#You can also use then with when to shorten up each condition to a single line:

dog = "cuddly"

owner = case dog
        when "hungry" then "Refilling food bowl."
        when "thirsty" then "Refilling water bowl."
        when "playful" then "Playing tug-of-war."
        when "cuddly" then "Snuggling."
        else "Reading newspaper."
        end