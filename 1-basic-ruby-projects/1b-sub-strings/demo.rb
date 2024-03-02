# Daniel Fletcher
# The Odin Project: Ruby
# Substrings


require "./substrings.rb"


puts "#substrings demo"
puts "------------------"
puts

puts "[1] substrings(\"Hello, World\". [\"H\", \"E\", \"L\", \"O\"])"
puts "    => " << substrings("Hello, World", ["H", "E", "L", "O"]).to_s
puts

puts "[2] substrings("
puts "      \"The quick brown fox jumps over the lazy dog.\","
puts "      [\"the\", \"quick\", \"lazy\"]"
puts "    )"
puts "    => " << substrings(
  "The quick brown fox jumps over the lazy dog.",
  ["the", "quick", "lazy"]
  ).to_s
puts

puts "[3] substrings(\"Hello, World\". [\"H\", \"E\", \"L\", \"O\"])"
puts "    => " << substrings("Hello, World", ["H", "E", "L", "O"]).to_s
puts

puts "[4] substrings(\"Hello, World\". [\"H\", \"E\", \"L\", \"O\"])"
puts "    => " << substrings("Hello, World", ["H", "E", "L", "O"]).to_s