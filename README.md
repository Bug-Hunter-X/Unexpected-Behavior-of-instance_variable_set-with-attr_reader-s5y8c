# Unexpected Behavior of instance_variable_set with attr_reader

This repository demonstrates a subtle difference in how Ruby handles instance variable modification when using `instance_variable_set` in conjunction with `attr_reader`.

## The Bug
The `bug.rb` file shows two example classes. `MyClass` uses a regular getter method, while `MyClass2` uses `attr_reader`. While `instance_variable_set` works as expected with `MyClass`, it fails to update the value exposed by `attr_reader` in `MyClass2`.

## The Solution
The solution is to avoid using `instance_variable_set` when `attr_reader` is used for the value. Instead use the setter provided by `attr_accessor`, or manually create the setter.