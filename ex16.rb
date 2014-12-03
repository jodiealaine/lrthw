filename = ARGV.first

puts "We're are going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

# Not needed as we are opening the file in 'w' mode
#puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}")

puts "And finally, we close it."
target.close

# close 					=> File -> Save
# read 						=> Reads the contents of the file. You can assign the result to a variable
# readline 				=> Reads one line of a text file
# truncate 				=> Empties the file. Watch out if you care about the file
# write('stuff') 	=> Writes "stuff" to the file