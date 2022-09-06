class Dog
  def talk
    puts 'Bark!'
  end

  def move(destination)
    puts "Running to the #{destination}"
  end
end

rex = Dog.new
rex.talk
rex.move('home')
