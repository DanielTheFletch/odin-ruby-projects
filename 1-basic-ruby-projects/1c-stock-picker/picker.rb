# Daniel Fletcher
# The Odin Project: Ruby
# Stock Picker


def stock_picker(prices)
  # O(n^2) solution
  max_profit = 0
  max_pair = []

  prices.each_with_index do |buy_price, buy_index|
    prices.each_with_index do |sell_price, sell_index|
      if sell_index > buy_index
        profit = sell_price - buy_price
        if profit > max_profit
          max_profit = profit
          max_pair = [buy_index, sell_index]
          puts max_profit
          puts max_pair.to_s
        end
      end
    end
  end

  puts "Final max profit: #{max_profit}"
  puts "Final max pair:   #{max_pair}"
  max_pair
end


stock_picker([1, 5, 4, 2, 3])