computer_number = rand(1..100)

puts computer_number
puts "I'm thinking of a number between 1 and 100."
puts "Can you guess it?"

number_guesses = 0
won = false

while number_guesses < 5 || won == false

  guess = gets.chomp.to_i

  if guess == computer_number
    puts "Congratulations, you guessed my number"
    won = true
  elsif guess < computer_number
    puts "Too low, try again"
  elsif guess > computer_number
    puts "Too high, try again"
  end

  number_guesses += 1
end

if won == false
  puts "Sorry, too many guesses!"
end
