class MyClass

  def MyClass.my_method(p1, p2)
    puts "Hello from MyClass!"
    puts "My parametrs: #{p1}, #{p2}"
  end 

  def first_method
    puts "Current instance wtihin first_method: #{self}"
    second_method
  end

  def second_method
    puts "Current instance within second_method: #{self}"
  end
end

my_object = MyClass.my_method(1, 2)
