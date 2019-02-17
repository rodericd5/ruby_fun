#!/usr/bin/ruby -w

# Test program assignment 1 :)

# Currently this function will print out the name and numbers sent into input from the console.
# Your assignment is to modify it so that the sum of the two numbers will be printed
# ONLY IF the name is "Chippardy". If the name is anything else it should print
# "GO AWAY NERD!"
def modifiable_func(name, num1, num2)
  puts "Hi " + name + " your numbers are " + num1 + " and " + num2 + "\n"

  # Write your code here
  if name == "Chippardy"
    puts num1.to_i + num2.to_i

  else
    puts "GO AWAY NERD!"
  
  end

end

puts "Please enter your name: "
line = STDIN.gets.strip

puts "Please enter the first number: "
num1 = STDIN.gets.strip

puts "Please enter the second number: "
num2 = STDIN.gets.strip

puts "Thank you for the input. Calling modifiable_func...\n\n"

modifiable_func(line, num1, num2)
