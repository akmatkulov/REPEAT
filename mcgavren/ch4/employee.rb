class Employee
  attr_reader :name

  def name=(value)
    raise "Name: #{value} can't be blank!" if value == ''

    @name = value
  end

  def initialize(value = 'Anonymoys')
    self.name = value
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(value)
    raise "An salry: #{value} isn't valid!" if value.negative?

    @salary = value
  end

  def initialize(name = 'Anonymous', value = 0.0)
    super(name)
    self.salary = value
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hourly_per_week

  def hourly_per_week=(value)
    raise "An hourly per week isn't valid" if value.negative?

    @hourly_per_week = value
  end

  def hourly_wage=(value)
    raise "An hourly wage isn't valid" if value.negative?

    @hourly_wage = value
  end

  def initialize(name = 'Anonymous', hourly_wage = 0.0, hourly_per_week = 0.0)
    super(name)
    @hourly_wage = hourly_wage
    @hourly_per_week = hourly_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_per_week * hourly_wage * 2
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

ben = SalariedEmployee.new('Ben', 50_000)
ben.print_pay_stub

gen = HourlyEmployee.cashier('Ivan')
gen.print_pay_stub
