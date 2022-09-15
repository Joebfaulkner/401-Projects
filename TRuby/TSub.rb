#The "def" keyword is short for define. This is basically a normal method header
#The "end" keyword signifies the end of a method that was defined
#Return is used to return some value just like many other languages

def add(n1, n2) #User-defined method for addition
	result = n1 + n2 #Performs addition operation
	return result #Returns result of above operation
end #End of method

def subtract(n1, n2) #User-defined method for subtration
	result = n1 - n2 #Performs subtraction operation
	return result #Returns result of above operation
end #End of method

def divide(n1, n2) #User-defined method for division
	result = n1 / n2 #Performs division operation
	return result #Returns result of above operation
end #End of method

def multiply(n1, n2) #User-defined method for multiplication
	result = n1 * n2 #Performs multiplication operation
	return result #Returns result of above operation
end #End of method

#Operation Execution Code Segment
addResult = add(93, 61) #Uses method "add" and performs method operation according to paremters
puts addResult #Prints result of "add" method operation on new line

subtractResult = subtract(77, 26) #Uses method "subtract" and performs method operation according to paremters
puts subtractResult #Prints result of "subtract" method operation on new line

divisionResult = divide(90, 5) #Uses method "divide" and performs method operation according to paremters
puts divisionResult #Prints result of "divide" method operation on new line

multiplyResult = multiply(10, 10) #Uses method "multiply" and performs method operation according to paremters
puts multiplyResult #Prints result of "multiply" method operation on new line
