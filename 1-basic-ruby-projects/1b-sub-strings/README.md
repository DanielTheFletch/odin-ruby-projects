# Project 1b: Substrings

My Ruby implementation of a substring counter utility. When provided with a single word/phrase alongside a corresponding list of possible substrings, it determines which of the listed possibilities are actual substrings of the word and notes how many times each substring occurs. For example, consider the scenario provided in the project specifications:

```rb
> dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
=> ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## Included Files

- `substrings.rb` &ndash; Contains all code and functions required by the project specifications, including:
    - `substrings(phrase, dict)` &ndash; Placeholder text.
- `demo.rb` &ndash; Contains sample code for demonstrating the project's functionality.
To run the demo, please see the instructions below.
- `README.md` &ndash; The file you're currently reading!

## Demo File

To run the included demo file (`demo.rb`), clone this directory into your own environment. With Ruby installed, execute the following command from within the cloned directory:

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