# Daniel Fletcher
# The Odin Project: Ruby
# Stock Picker


def stock_picker(prices)
  # Create array of local extrema
  decreasing = true
  minmax_pairs = []

  # Placeholder text
  prices.inject do |prev_price, curr_price|
    if decreasing && curr_price > prev_price
      puts "Local minimum found: #{prev_price}"
      decreasing = !decreasing
    elsif !decreasing && curr_price < prev_price
      puts "Local maximum found: #{prev_price}"
      decreasing = !decreasing
    end
    curr_price
  end

  minmax_pairs
end


stock_picker([1, 5, 4, 2, 3])