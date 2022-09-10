class Animal
  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ''

    @name = value
  end

  def age=(value)
    raise "An age #{value} isn't valid" if value.negative?

    @age = value
  end

  def talk
    puts "#{@name} says bark!"
  end

  def move(destination)
    puts "#{@name} running to #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Dog < Animal
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirip! Chirip!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{name} unrolls!"
    super
  end

  def to_s
    "#{@name} the armadillo, age #{@age}"
  end
end

dillon = Armadillo.new
dillon.name = 'Dillon'
dillon.age = 4

dino = Armadillo.new
dino.name = 'Dino'
dino.age = 3

puts dillon, dino
