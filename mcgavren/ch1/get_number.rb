# Get My Number Game
# Written by: Sovetbek!

puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets.chomp.capitalize
puts "Welcome, #{input}!"

target = rand(1..100)
num_guess = 0
guessed_it = true

puts 'Мы загадали число от 1 до 100. Угадаешь с 10-ти попыток?'

while num_guess < 10 && guessed_it
  print 'Enter number: '
  number = gets.to_i
  if number > target
    puts 'Target LOW'
  elsif number < target
    puts 'Target HIGH'
  elsif number == target
    puts "Congluratation #{input}! You win! Guess: #{num_guess}"
    guessed_it = false
  end
  num_guess += 1
end

puts "Guess left. Sorry! Target: #{target}" if num_guess == 10
