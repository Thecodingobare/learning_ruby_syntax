#REGEX
#Always starts / and ends /
# / /g
# g at the end means global
# g will search through the entire string
/e+a?f*/
# e+ => + means that you should match at least one e|match as much as you can but atleast match one|
# a? => ? means that optionally match the a character
# f* => * means that you should match 0 or more |More like combining + and ?|
/.at/
# The . at the beginning means that you match literally everything that is all "a t " characters

/\./
#The \ cancels everything that comes after it & therefore we can now match a period as to opposed to matching everything

#This matches everything and goes ahead to search for a .
/.\./

#This matches any word character that is, things like letters
/\w/g

#This matches any white space character
/\s/g

#The below matches anything that is not a white space and W anything that is not word character
/\S/g         &   /\W/g 

#Captures all words that are 4 character words
/\w{4}/g
#To get 4 to 5 characters
/\w{4,5}/g


                                        #CHARACTER GROUPINGS
#For character groupings
#For instance to get any character word that ends in at

#By using square brackets 
#We will get any characters that start with "fc" and end with "at"
/[fc]at/g

#To check all characters that are "a-z"
/[a-z]/g

#To check all characters that are both "a-z" in lowercase and both upcase "A-Z"
/[a-zA-Z]/g

#To check for a range of numbers
/[0-9]/g


                                    #MATCHING AS A GROUP
#If we need to match characters as group of their own that act upon themselves we can do as so

#This will first search for characters that start with lowercase "t" or "T" upcase then go ahead to match "he"
#The | character symbolises OR
/(t|T)he/g

#This will search for either t OR the entire word "The"
/t|The/g

#This match any word character that contains either t, e, OR r that is 2 to 3 character long
#For instance a word character like "street"
/(t|e|r){2,3}/g

#This will do the above and also search for a period .
/(t|e|r){2,3}\./g

#This will only work on "e" character that appears within a row 2-3 times
/re{2,3}/g

#This will search for a set of "re" that appears 2-3 times
/(re){2,3}/g

# ^ means match the beginning of a line






