class Dog
  attr_reader :name, :age

  def name=(value)
    raise 'Name cant be blank!' if value == ''

    @name = value
  end

  def age=(value)
    raise 'An age isnt valid!' if value.negative?

    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} running to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old!"
  end
end

class Cat
  def talk
    puts 'Meow!'
  end

  def move(destination)
    puts "Running to the #{destination}"
  end
end

class Bird
  def talk
    puts 'Chirip!'
  end

  def move(destination)
    puts "Flying to the #{destination}"
  end
end

rex = Dog.new
rex.age = 7
rex.name = ''
rex.talk
rex.report_age
rex.move('home')
