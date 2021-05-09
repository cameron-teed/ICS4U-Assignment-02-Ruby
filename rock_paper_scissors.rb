##
# This prorame lets you play rock, paper, scissors against the computer
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-09
# frozen_string_literal: true

def final_outcome(user_string)
  # Creates a random number
  rand_number = rand(1..3)
  # Assigns the random number with a its corresponding string
  comp_string = case rand_number
                when 1
                  # Computer chose rock
                  'ROCK'
                when 2
                  # Computer chose paper
                  'PAPER'
                else
                  # Computer chose scissors
                  'SCISSORS'
                end

  # Prints out what the computer chose
  puts
  puts "Computer chose #{comp_string}"

  # Determines the result of what the user and computer chose
  if comp_string == user_string
    # User Ties
    'Tied'
  elsif comp_string.include?('PAPER') && user_string.include?('SCISSORS')
    # User Wins
    'Won'
  elsif comp_string.include?('ROCK') && user_string.include?('PAPER')
    # User Wins
    'Won'
  elsif comp_string.include?('SCISSORS') && user_string.include?('ROCK')
    # User Wins
    'Won'
  else
    # User losses
    'Lost'
  end
  # Returns the final results
end
begin
  # Asks user for input
  puts 'Please enter Rock, Paper or Scissors:'
  # Gets the user input
  user_string = gets.chomp
  # Converts the input into capitals
  user_string = user_string.upcase

  # Checks if user inputted correct strings
  if user_string.include?('ROCK') || user_string.include?('PAPER') || user_string.include?('SCISSORS')
    # Prints out the results
    puts "\nYou #{final_outcome(user_string)}!"
    puts "\nDone"
  else
    # Asks user to input correct number
    puts "\nPlease enter Rock, Paper or Scissors"
  end
rescue StandardError
  # If the input cannot be converted into a int, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end
