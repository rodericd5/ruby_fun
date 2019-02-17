#!/usr/bin/ruby -w

# Welcome to your first real solo assignment.
# (Yes I will still be available for help)
# Your job is to implement 3 different functions below
# Also take a moment to look at the code that I wrote
# It will reinforce programming concepts you recently learned
# And teach you more about what you are supposed to do


# The first function for you to implement is vote_self.
# This function, as you might expect, intends to kick you out of the tribe.
# What this means is that you need to modify the array called tribe1
# So that it contains every person's name except for yours.
def vote_self(tribe1)

  # Your code goes here

  # Hint: the array that contains the names of people in your tribe
  # is passed in as a parameter
  # This means you have access to it in this function
  # Try reassigning names to the tribe for everyone but yourself?
  # You could use a loop? Many ways to do this :)
end

# Now you need to modify the array called tribe1 so that it contains
# One less name than before. That one less name can be any name other
# Than your own!
def vote_other(tribe1)

  # Your code goes here

  # Hint: This will be very similar to the above, except you now
  # can choose to vote anybody else. The only person you cannot
  # vote off (remove from the array) is yourself.
end

# This function intends for you to modify the array tribe1 to contain
# only a single person in it. That one person needs to be the name
# of every individual that was initially in the tribe. 
def combine_tribe(tribe1)

  # Your code goes here

  # Hint: How did we combine strings again? :P
  # Hint Hint: Looping really is your friend here
end



# This is a simple function that just prints the game menu and the current
# members of the tribe. It is good for reusability
def print_menu(arr)
  puts "Welcome! You are on survivor but unfortunately\nyour team is currently at tribal council."
  puts "As you know, your goal is to make it out alive."
  puts "These are your tribe members:\n"
  puts arr
  puts "\nYour options are as follows:"
  puts "1. Give up and vote yourself out"
  puts "2. Vote someone else out"
  puts "3. Combine all of your tribe members into a single freaky being"
  puts "4. enter q or Q to shut the game off"
end

# Here the tribe is initialized and then the menu is printed
tribe1 = ["Alicia", "Grigor", "Ashleigh", "Hernandez", "Kelsey", "Toshiki"]
print_menu(tribe1)
input = STDIN.gets.strip

# Take a look at this. It's your first view of a while loop
# Inside of it is a series of if elsif statements.
# Everything between the while loop (marked by indents) and
# the last end keyword will be executed until input of "q" or "Q" is given
# Note the menu is printed every iteration so that I can keep the game going :)
while input != "q" && input != "Q"
  if input.to_i == 1
    puts "Voting yourself out...\n\n"
    vote_self(tribe1)
  elsif input.to_i == 2
    puts "Voting someone else out...\n\n"
    vote_other(tribe1)
  elsif input.to_i == 3
    puts "Making giant tribesman...\n\n"
    combine_tribe(tribe1)
  else
    puts "I'm sorry your input was invalid please try again.\n\n"
  end
  print_menu(tribe1)
  input = STDIN.gets.strip
end
