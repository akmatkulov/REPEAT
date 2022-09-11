class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motortype: #{@motor_type}"
  end
end

moto = PowerBoat.new('Guppy', 'outboard')
moto.info
