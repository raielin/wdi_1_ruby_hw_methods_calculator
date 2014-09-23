# Practice with functions, loops, conditions, user-input
# Build a calculator: A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.

require 'pry'


# prompt user for choice of calculator function -- using addition, subtraction, multiplication, division

# --------------GET USER INPUT METHODS----------------

def get_user_function
  puts '''What function would you like to perform?
  Please type the letter associated with your desired function as indicated below:

  Type "A" for Addition
  Type "S" for Subtraction
  Type "M" for Multiplication
  Type "D" for Division

  '''
  gets.chomp.upcase

  # should also test for valid input. if invalid, prompt for correct input and return new input.

end

def get_user_values(user_val_1, user_val_2)
  puts "Please provide the two values you would like me to use in order to calculate your result."
  # need to think about how to collect these values. separately? can one method return two values? what about shovel - is there a reverse shovel?
end


# --------------FUNCTION METHODS----------------

# whether here or in Get User Input Methods, need to make sure arguments are floats when being evaluated

def addition(val_1, val_2)
  val_1 + val_2
end

def subtraction(val_1, val_2)
  val_1 - val_2
end

def multiply(val_1, val_2)
  val_1 * val_2
end

def divide(val_1, val_2)
  val_1 / val_2  # maybe use % to produce fraction instead of decimal for remainder?
end



# --------------CODE TO RUN----------------

puts get_user_function

binding.pry # stop here to test individuals methods



# outputs string of the equation user is asking to run.
# ask to confirm equation. if confirmed, run equation and output result. if not confirmed, prompt for new inputs.




