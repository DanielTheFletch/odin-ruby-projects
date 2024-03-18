# Project 1b: Sub Strings

My Ruby implementation of a substring counter utility.

When provided with a single word/phrase and a list of strings, it determines which of the listed strings are valid substrings of the specified word/phrase while also tracking how many unique times each substring occurs. Consider the following example from the project specifications:

```rb
> dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
=> ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## Included Files

- `substrings.rb` &ndash; Contains all methods and implementations required by the project specifications, including:
    - `#substrings` &ndash; Takes a word as the first argument and an array of valid substrings as the second argument; returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
- `demo.rb` &ndash; Contains sample code for demonstrating the project's functionality.
To run the demo, please see the instructions below.
- `README.md` &ndash; The file you're currently reading!

## Demo File

To run the included demo file (`demo.rb`), copy this directory into your own environment. With Ruby installed, execute the following command from within the copied directory:

```
$ ruby demo.rb
```

The demo presents ??? hard-coded examples along with one interactive example that calls for user input.

## Technologies Used

- Ruby

## Credits

- Project by **Daniel Fletcher**
    - LinkedIn profile: [/in/DanielTheFletch](https://www.linkedin.com/in/danielthefletch)
    - Portfolio site: [daniel-fletcher-portfolio.com](https://www.daniel-fletcher-portfolio.com)
- Project specifications from **The Odin Project** online curriculum
    - Home page: [The Odin Project](https://www.theodinproject.com/)
    - Project specifications: [Sub Strings](https://www.theodinproject.com/lessons/ruby-sub-strings)