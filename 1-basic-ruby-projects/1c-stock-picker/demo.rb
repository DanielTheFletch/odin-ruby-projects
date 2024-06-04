# Daniel Fletcher
# The Odin Project: Ruby
# Stock Picker


require "./picker.rb"


puts "#stock_picker demo"
puts "------------------"
puts

puts "[1] stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])"
puts "    => " << stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]).to_s
puts

puts "[2] stock_picker([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])"
puts "    => " << stock_picker([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]).to_s
puts

puts "[3] stock_picker([3, 4, 3, 4, 10, 4, 5, 1, 5, 3, 6, 5, 9, 1, 8])"
puts "    => " << stock_picker([3, 4, 3, 4, 10, 4, 5, 1, 5, 3, 6, 5, 9, 1, 8]).to_s
puts

puts "[4] stock_picker([15, 3, 7, 2, 1])"
puts "    => " << stock_picker([15, 3, 7, 2, 1]).to_s
puts

puts "[Interactive Example]"
puts "Enter a list of integers, one at a time, representing an array of stock prices."
puts "Submit a blank line to stop processing input."

user_input = gets.chomp
user_array = []
until user_input.empty?
    user_array.push(user_input.to_i)
    user_input = gets.chomp
end

puts "[I] stock_picker(#{user_array.to_s})"
puts "    => " << stock_picker(user_array).to_s
puts