def greet_user
  puts "I'm thinking of a number between 1 and 100."
  puts "Can you guess it?"
end

def remaining_guesses(number_guesses)
  if 5-number_guesses == 1
    puts "You have 1 guess remaining"
  else
    puts "You have #{5-number_guesses} guesses remaining."
  end
end

computer_number = rand(1..100)
number_guesses = 0
won = false
guessed_numbers = []

puts computer_number
greet_user

while number_guesses < 5 && !won
  p guessed_numbers
  guess = gets.chomp.to_i
  if guess == computer_number
    puts "Congratulations, you guessed my number!"
    won = true
  elsif guessed_numbers.include?(guess)
    puts "Quit derping around, you guessed that already!"
    puts remaining_guesses(number_guesses+1)
  elsif guess < computer_number
    puts "Too low, try again"
    puts remaining_guesses(number_guesses+1)
  elsif guess > computer_number
    puts "Too high, try again"
    puts remaining_guesses(number_guesses+1)
  end
  number_guesses += 1
  guessed_numbers << guess
end

if won == false
  puts "Sorry, too many guesses!"
end
