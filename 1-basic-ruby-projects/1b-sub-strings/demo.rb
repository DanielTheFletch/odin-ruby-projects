# Daniel Fletcher
# The Odin Project: Ruby
# Substrings


require "./substrings.rb"


puts "#substrings demo"
puts "------------------"
puts

puts "[1] substrings(\"Hello, World\", [\"H\", \"E\", \"L\", \"O\"])"
puts "    => " << substrings("Hello, World", ["H", "E", "L", "O"]).to_s
puts

puts "[2] substrings(\"Hello, World\", [\"L\", \"LL\", \"LLL\"])"
puts "    => " << substrings("Hello, World", ["L", "LL", "LLL"]).to_s
puts

puts "[3] substrings("
puts "      \"The quick brown fox jumps over the lazy dog.\","
puts "      [\"the\", \"quick\", \"lazy\"]"
puts "    )"
puts "    => " << substrings(
  "The quick brown fox jumps over the lazy dog.",
  ["the", "quick", "lazy"]
).to_s
puts

dictionary = [
  "below", "down", "go", "going", "horn", "how", "howdy", "it", "i",
  "low", "own", "part", "partner", "sit"
]

puts "dictionary = " << dictionary.to_s
puts

puts "[4] substrings(\"below\", dictionary)"
puts "    => " << substrings("below", dictionary).to_s
puts

puts "[5] substrings("
puts "      \"Howdy partner, sit down! How's it going?\","
puts "      dictionary"
puts "    )"
puts "    => " << substrings(
  "Howdy partner, sit down! How's it going?",
  dictionary
).to_s
puts