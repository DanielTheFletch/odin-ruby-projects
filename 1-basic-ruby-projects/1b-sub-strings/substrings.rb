# Daniel Fletcher
# The Odin Project: Ruby
# Sub Strings


# Required function: Count total instances of each valid substring
def substrings(string, possible)
  # Convert all strings to lowercase for case-insensitive comparisons
  lower_str = string.downcase
  lower_arr = possible.map { |substring| substring.downcase }

  # Retrieve all valid substrings in provided list
  valid = possible.filter { |substring| lower.include?(substring.downcase) }

  # Count times each valid substring appears
  valid.reduce(Hash.new(0)) do |counts, substring|
    lower.scan(substring.downcase) { |instance| counts[instance] += 1 }
    counts
  end
end