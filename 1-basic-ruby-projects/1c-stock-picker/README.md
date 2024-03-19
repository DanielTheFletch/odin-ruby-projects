# Project 1c: Stock Picker

My Ruby implementation of a stock-trading optimization tool. Given a series of day-by-day stock prices, the stock picker determines the optimal day to buy and the corresponding optimal day to sell.

Consider the following example from the project specifications:

```rb
> stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
=> [1, 4]

#  Day 1 price: $3
#  Day 4 price: $15
# Total profit: $15 - $3 = $12
```

## Included Files

- `picker.rb` &ndash; Contains all methods and implementations required by the project specifications, including:
    - `#stock_picker` &ndash; Takes in an array of stock prices, one for each hypothetical day. Returns a pair of days representing the best day to buy and the best day to sell. Days start at 0.
- `demo.rb` &ndash; Contains sample code for demonstrating the project's functionality. To run the demo, please see the instructions below.
- `README.md` &ndash; The file you're currently reading!

## Demo File

To run the included demo file (`demo.rb`), copy this directory into your own environment. With Ruby installed, execute the following command from within the copied directory:

```
$ ruby demo.rb
```

The demo presents five (5) hard-coded examples along with one interactive example that calls for user input.

## Technologies Used

- Ruby

## Credits

- Project by **Daniel Fletcher**
    - LinkedIn profile: [/in/DanielTheFletch](https://www.linkedin.com/in/danielthefletch)
    - Portfolio site: [daniel-fletcher-portfolio.com](https://www.daniel-fletcher-portfolio.com)
- Project specifications from **The Odin Project** online curriculum
    - Home page: [The Odin Project](https://www.theodinproject.com/)
    - Project specifications: [Stock Picker](https://www.theodinproject.com/lessons/ruby-stock-picker)