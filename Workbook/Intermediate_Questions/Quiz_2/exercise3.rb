# In an earlier exercise we saw that depending on variables to be modified by 
# called methods can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# We learned that when the above "coincidentally" does what we think we 
# wanted "depends" upon what is going on inside the method.

# How can we refactor this exercise to make the result easier to predict 
# and easier for the next programmer to maintain?

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
a_string_param, an_array_param = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# note: I do not understand the function of the comma in line 31

# Tealeaf explanation:

# Every language (Ruby included) provides ways and means of writing "clever" code 
# that depends on some of the less obvious traits of the language.
#
# Every good programmer practices these tricks...and then avoids them like the plague.
#
# Clever programmers don't write "clever" code. They write explicit code that is easy 
# to read, debug and modify as the requirements change.






