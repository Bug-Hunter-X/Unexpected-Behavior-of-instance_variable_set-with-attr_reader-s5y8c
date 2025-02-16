```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_instance = MyClass.new(10)
puts my_instance.value # => 10

my_instance.instance_variable_set(:@value, 20)
puts my_instance.value # => 20 

#The above works as expected

class MyClass2
  attr_accessor :value # Changed to attr_accessor

  def initialize(value)
    @value = value
  end
end

my_instance2 = MyClass2.new(10)
puts my_instance2.value # => 10

my_instance2.value = 20 #Use setter
puts my_instance2.value # => 20
```