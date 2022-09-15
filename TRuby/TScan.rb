# TScan
# This is how to read console input.

# Getting integer values
puts("Enter a number:")
num_one = gets.to_i
puts("Enter a second number:")
num_two = gets.to_i
sum = num_one + num_two
puts("The sum of #{num_one} + #{num_two} = #{sum}")

# Getting string values
puts("Enter your first name:")
first_name = gets.chomp # gets also works, gets.chomp removes the new line token at the end of the statment so it's "Name" instead of "Name\n"
puts("Enter you last naem:")
last_name = gets.chomp
puts("Hello #{first_name} #{last_name}!")