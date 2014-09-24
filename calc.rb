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

# commenting out method get_user_values for now. not sure how to properly define such a method. moved to main code below.
# def get_user_values
#   puts "Please provide the two values you would like me to use in order to calculate your result."
#   # need to think about how to collect these values. separately? can one method return two values? what about shovel - is there a reverse shovel?

#   puts "Value 1: "
#   user_val_1 = gets.chomp.to_f

#   puts "Value 2: "
#   user_val_2 = gets.chomp.to_f
# end


# --------------FUNCTION METHODS----------------

# whether here or in Get User Input Methods, need to make sure arguments are floats when being evaluated

def recall_user_function(function_input)
  if function_input == "A"
    return "+"

  elsif function_input == "S"
    return "-"

  elsif function_input == "M"
    return "*"

  elsif function_input == "D"
    return "/"

  end
end


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



# --------------MAIN CODE TO RUN----------------

puts get_user_function # only use for testing
binding.pry # test each method in pry here

user_function = get_user_function


puts "Please provide the two values you would like me to use in order to calculate your result."
# need to think about how to collect these values. separately? can one method return two values? what about shovel - is there a reverse shovel?

puts "Value 1: "
user_val_1 = gets.chomp # to_f here? but want to request confirm with actual value user input...

puts "Value 2: "
user_val_2 = gets.chomp

puts "You are requesting the calcuation: #{user_val_1} #{recall_user_function(user_function)} #{user_val_2}"

# outputs string of the equation user is asking to run.
# ask to confirm equation. if confirmed, run equation and output result. if not confirmed, prompt for new inputs.




