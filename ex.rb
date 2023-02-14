def word
    "Do you like cats?"=~ /like/
end
puts word

# String#include? method
def word
    "Do you like cats?".include? "cats"
end
puts word

#match method
def word
    "Do you like cats?".match /like/
end
puts word

#match method
def word
   if "Do you like cats?".match (/cats/)
    puts "It matches!"
   end
end
 word


#  character classes
# A character class lets you define a range or a list of characters to match. 
# dore the following string comtain the name s written bellow?
def matching_words (str)
    str =~ /[work, not, morning]/
end
puts matching_words("I will be working morning tomorrow morning")

# Ranges 
# We can use ranges to match multiple letters or numbers without having to type them all out.
def contains_numbers(num)
    num.match /[^A-Z]/
end
puts contains_numbers("The year is 2023")
# puts contains_numbers("The cat is white")

# Remember: the return value when using `=~` is either the string index or `nil`



# \w is equivalent to [0-9a-zA-Z_]
# \d is the same as [0-9]
# \s matches white space (tabs, regular space, newline)


# There is also the negative form of these:

# \W anything that’s not in [0-9a-zA-Z_]
# \D anything that’s not a number
# \S anything that’s not a space

def ip_address?(str)
    # We use !! to convert the return value to a boolean
    !!(str =~ /\A\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\Z/)
  end
  puts ip_address?("192.168.1.1")
  puts ip_address?("0000.0000") 