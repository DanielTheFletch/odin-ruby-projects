# Daniel Fletcher
# The Odin Project: Ruby
# Bubbl


require "./bubble.rb"


puts "#bubble_sort demo"
puts "-----------------"
puts

puts "[1] bubble_sort([4, 3, 78, 2, 0, 2])"
puts "    => " << bubble_sort([4, 3, 78, 2, 0, 2]).to_s
puts

puts "[2] bubble_sort([17, 3, 6, 9, 15, 8, 6, 1, 10])"
puts "    => " << bubble_sort([17, 3, 6, 9, 15, 8, 6, 1, 10]).to_s
puts

puts "[3] bubble_sort([-1, 1, -2, 2, -3, 3, 1234, 4321, 0])"
puts "    => " << bubble_sort([-1, 1, -2, 2, -3, 3, 1234, 4321, 0]).to_s
puts

puts "[4] bubble_sort([99, 98, 97, 96, 95, 94, 93, 92, 91])"
puts "    => " << bubble_sort([99, 98, 97, 96, 95, 94, 93, 92, 91]).to_s
puts

puts "[5] bubble_sort([2, 4, 6, 8])"
puts "    => " << bubble_sort([2, 4, 6, 8]).to_s
puts

puts "[Interactive Example]"
puts "Enter a list of integers, one at a time."
puts "Submit a blank line to stop processing input."

user_input = gets.chomp
user_array = []
until user_input.empty?
    user_array.push(user_input.to_i)
    user_input = gets.chomp
end

puts "[I] bubble_sort(#{user_array.to_s})"
puts "    => " << bubble_sort(user_array).to_s
puts