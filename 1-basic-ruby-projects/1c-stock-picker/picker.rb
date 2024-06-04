# Daniel Fletcher
# The Odin Project: Ruby
# Stock Picker


def stock_picker(prices)
  # Calculate max possible profit margins for each day
  profits = []
  prices.each_index do |buy_index|
    # Retrieve index of best possible sell day
    remaining_prices = prices.last(prices.size - (buy_index + 1))
    sell_index = prices.index(remaining_prices.max)

    # Package indices and profit together in hashes
    unless sell_index.nil?
      profits.append({
        buy_index: buy_index,
        sell_index: sell_index,
        profit: prices[sell_index] - prices[buy_index]
      })
    end
  end

  # Find the greatest of these profits
  max_profit = profits.max { |a, b| a[:profit] <=> b[:profit] }
  [max_profit[:buy_index], max_profit[:sell_index]]
end