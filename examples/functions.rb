Debug1 = -> {
  puts "returns:"
  puts fn.().inspect
  puts "\n"
}

# run this file via `ruby example.rb`

puts "--- Functions: ---"

# Example - Functions - basic function definition:

puts "foo = -> { return \"bar\" }"
foo = -> { return "bar" }

# Example - Functions - basic function call:

puts "foo.()\n"
foo.()

Debug1.(foo)


puts "simplified:"
foo = -> { "bar" }
puts "foo = -> { \"bar\" }"
foo.()

puts "returns:"
puts foo.().inspect
puts "\n"

puts "map:"
puts "[1, 2, 3].map{ |num|
  num + 1
}"
[1, 2, 3].map{ |num|
  num + 1
}
puts "returns:"
puts [1, 2, 3].map{ |num|
  num + 1
}.inspect
puts "\n"

puts "Modules:"
require_relative 'lib/modules'
puts "Foo = Require('./lib/foo')
Foo.bar"
Foo = Require('./lib/foo')
Foo.bar
puts "returns:"
puts Foo.bar
