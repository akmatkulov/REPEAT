class Employee
  attr_reader :name, :salary

  def name=(value)
    raise "Name can't be blank!" if value == ''

    @name = value
  end

  def salary=(value)
    raise "An salary isn't valid!" if value.negative?

    @salary = value
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

ben = Employee.new
ben.name = 'Ben Chill'
ben.salary = 50_000
ben.print_pay_stub
