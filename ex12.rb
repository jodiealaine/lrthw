print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me another number: "
another = gets.chomp.to_f
ten_percent = another * 0.1
puts "Here is your change: #{ten_percent}"

