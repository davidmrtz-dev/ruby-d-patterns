# !/usr/bin/ruby
# frozen_string_literal: true

require 'weakref'

def main
  obj1 = Object.new
  obj2 = Object.new

  obj3 = Object.new
  obj4 = Object.new

  weak_obj2 = WeakRef.new(obj2)

  obj1.instance_variable_set(:@obj2, obj2)
  obj2.instance_variable_set(:@obj1, obj1)

  obj3.instance_variable_set(:@obj4, obj4)
  obj4.instance_variable_set(:@obj3, obj3)
  obj4 = nil

  GC.start

  puts "obj2 is nil: #{weak_obj2.nil?}"
  puts "obj4 is nil: #{obj4.nil?}"
end

main if __FILE__ == $PROGRAM_NAME

# Step-by-step explanation of what happens:

# 1. You create objects `obj1`, `obj2`, `obj3`, and `obj4`.
# 2. You establish circular references between `obj1` and `obj2`, and between `obj3` and `obj4`.
# 3. You create a weak reference `weak_obj2` to `obj2`.
# 4. You set `obj2` to `nil`, breaking the strong reference to `obj2` and allowing it to be garbage collected.
# 5. You set `obj4` to `nil`, breaking the strong reference to `obj4` and allowing it to be garbage collected as well.
# 6. You call `GC.start`, initiating garbage collection.
# 7. You print the result of whether `weak_obj2` is `nil`, which returns `false`, and whether `obj4` is `nil`, which returns `true`.

# Why this result is obtained:

# - `weak_obj2` is still not `nil` because `obj2` was garbage collected, but `weak_obj2` is a weak reference,
#  which means its value is not automatically updated when the referenced object is garbage collected.
#  Therefore, `weak_obj2` still points to the memory address of the object that has already been garbage collected,
# resulting in `weak_obj2.nil?` returning `false`.

# - `obj4` is `nil` because, as it was set to `nil` before calling `GC.start`, there are no references to `obj4` anymore.
# Therefore, the garbage collector collects it during the `GC.start` call, making `obj4.nil?` return `true`.

# In summary, while `weak_obj2` is still not `nil`, `obj4` is `nil` because the reference to `obj4` was broken before calling `GC.start`,
# allowing it to be garbage collected.
