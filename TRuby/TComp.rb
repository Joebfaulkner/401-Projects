# TComp
# Joseph Faulkner, Ismael Reyes, Grant Simon, and Hannah Bridevaux
# This goes over different types of comparisons that can be done in ruby with basic opperations and the comparable mixin
num_one = 1
num_two = 2

# Ruby has boolean variables and has basic boolean operators
equal = num_one == num_two # false
greater_than = num_one > num_two # false
less_than = num_one < num_two # true

# Ruby also has a comparable mixin shown with <=> that returns -1, 0, or 1 if the first value is less than, equal to, or greater than the second value.
num_comparable = num_one <=> num_two # -1
# This is useful for ordering such as determining alphabetical order of words.
string_comparable = "Alex" <=> "Aaron" # 1 because Alex has a higher ASCII value than Aaron. The first letters are the same but the l in Alex is greater than the a in Aaron.
# Lets sort a list using the comparable mixin
names = ["Ishmael", "Hannah", "Grant", "Joseph"]
names.sort! { |first_name, second_name| first_name <=> second_name} # Grant, Hannah, Ishmael, Joseph

puts equal
puts greater_than
puts less_than
puts num_comparable
puts string_comparable
puts names