# Code your solution here!
require "pry"

def run_guessing_game
  done = false
  while !done
    # Setup 
    correct_num = rand(6) + 1
    puts "Guess a number 1-6. Type exit to quit."

    # Get input, convert to int if possible
    input = gets.chomp
    input = input.to_i if (1..6) === input.to_i  

    case input
    when "exit"
      puts "Goodbye!"
      done = true
    when (1..6)
      if input == correct_num
        puts "You guessed the correct number!"
      else
        puts "Sorry! The computer guessed #{correct_num}."
      end
    else
      puts "Bad Input - Try again!"
    end # case
  end # while
end
