def say_hi(name)
  "Hi, #{name}"
end

puts say_hi("josh")

my_array = [5, 3, 7, 2]

# my_array = my_array.sort!

my_array.sort!

puts my_array

def print_result
  result_from_block = yield
  puts result_from_block
end

# This will print out the number 9 to the console
def benchmark
  # Your benchmarking code goes here.
end
 
# Be careful, pasting this into IRB will take a long time to print.


def benchmark
  start_time = Time.now
  in_block = yield
  end_time = Time.now
  running_time = end_time - start_time
end
 
long_string = "apple"*200000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"

puts Math::PI