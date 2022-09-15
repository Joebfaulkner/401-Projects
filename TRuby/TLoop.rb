# TLoop
# Joseph Faulkner, Ismael Reyes, Grant Simon, and Hannah Bridevaux

$i = 0
$j = 0
$num = 5
$array = ["Apple", "Banana", "Peach", "Orange", "Dragonfruit", "Pineapple", "Starfruit", "Passionfruit"]

# While statement

while $i < $num  do
   puts("The current number is #$i" )
   $i +=1
end

# Until statement

until $j == $num do
   puts($array[$j])
   $j += 1
end

# Executing code for every value in expression

for $i in 0..10
  for $j in 0..5
  print("Fizz", " ")
  print("Buzz", " ")
  end
puts(" ")
end