# Daniel Fletcher
# The Odin Project: Ruby
# Caesar Cipher


require "./caesar.rb"


puts "caesar_cipher demo"
puts "------------------"
puts

puts "[1] caesar_cipher(\"What a string!\", 5)"
puts "    => " << caesar_cipher("What a string!", 5)
puts "    caesar_cipher(\"Bmfy f xywnsl!\", 26 - 5)"
puts "    => " << caesar_cipher("Bmfy f xywnsl!", 26 - 5)
puts

puts "[2] caesar_cipher(\"Hello, World\", 12)"
puts "    => " << caesar_cipher("Hello, World", 12)
puts

puts "[3] caesar_cipher(\"Is ThIs ThE kruStY krAb?\", 7)"
puts "    => " << caesar_cipher("Is ThIs ThE kruStY krAb?", 7)
puts

puts "[4] caesar_cipher(\"I'm getting... sleepy.... ZZZZZZZZZZZ\", 25)"
puts "    => " << caesar_cipher("I'm getting... sleepy.... ZZZZZZZZZZZ", 25)
puts

puts "[5] caesar_cipher(\"To be, or not to be? That is the question.\", 26)"
puts "    => " << caesar_cipher("To be, or not to be? That is the question.", 26)
puts

puts "[6] caesar_cipher(\"Tvcvjkv zj r xivrk xrdv\", 9)"
puts "    => " << caesar_cipher("Tvcvjkv zj r xivrk xrdv", 9)
puts

puts "[Interactive Example]"
print "Enter a word or phrase: "
user_phrase = gets.chomp
print "Enter a shift amount: "
user_shift = gets.chomp.to_i
puts

puts "[I] caesar_cipher(\"#{user_phrase}\", #{user_shift})"
puts "    => " << caesar_cipher(user_phrase, user_shift)
puts