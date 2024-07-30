# Project 2a: Tic Tac Toe

The classic game of Tic Tac Toe, playable on the command line. Two human players can play against each other and the board is displayed in between turns.

## File Structure

The files associated with the project are organized as follows:

```
.
├── board.rb
├── main.rb
└── README.md
```

## Running the Project

To run the project, copy this directory into your own environment. With Ruby installed, run the `main.rb` file by executing the following command from within the copied directory:

```
$ ruby main.rb
```

### Sample Run

```
$ ruby main.rb 
  _____ ___ ____           _____  _    ____           _____ ___  _____ 
 |_   _|_ _/ ___|         |_   _|/ \  / ___|         |_   _/ _ \| ____|
   | |  | | |      _____    | | / _ \| |      _____    | || | | |  _|  
   | |  | | |___  |_____|   | |/ ___ \ |___  |_____|   | || |_| | |___ 
   |_| |___\____|           |_/_/   \_\____|           |_| \___/|_____|

       ____        _             _____    _ _ _   _ 
      |  _ \ _   _| |__  _   _  | ____|__| (_) |_(_) ___  _ __ 
      | |_) | | | | '_ \| | | | |  _| / _` | | __| |/ _ \| '_ \ 
      |  _ <| |_| | |_) | |_| | | |__| (_| | | |_| | (_) | | | |
      |_| \_\\__,_|_.__/ \__, | |_____\__,_|_|\__|_|\___/|_| |_|
                         |___/                                  

'X' to play.

   |   |            1 | 2 | 3
-----------        -----------
   |   |            4 | 5 | 6
-----------        -----------
   |   |            7 | 8 | 9

Enter 'X' placement [1-9]: 5

'O' to play.

   |   |            1 | 2 | 3
-----------        -----------
   | X |            4 | 5 | 6
-----------        -----------
   |   |            7 | 8 | 9

Enter 'O' placement [1-9]: 1

'X' to play.

 O |   |            1 | 2 | 3
-----------        -----------
   | X |            4 | 5 | 6
-----------        -----------
   |   |            7 | 8 | 9

Enter 'X' placement [1-9]: 9

'O' to play.

 O |   |            1 | 2 | 3
-----------        -----------
   | X |            4 | 5 | 6
-----------        -----------
   |   | X          7 | 8 | 9

Enter 'O' placement [1-9]: 4

'X' to play.

 O |   |            1 | 2 | 3
-----------        -----------
 O | X |            4 | 5 | 6
-----------        -----------
   |   | X          7 | 8 | 9

Enter 'X' placement [1-9]: 7

'O' to play.

 O |   |            1 | 2 | 3
-----------        -----------
 O | X |            4 | 5 | 6
-----------        -----------
 X |   | X          7 | 8 | 9

Enter 'O' placement [1-9]: 3

'X' to play.

 O |   | O          1 | 2 | 3
-----------        -----------
 O | X |            4 | 5 | 6
-----------        -----------
 X |   | X          7 | 8 | 9

Enter 'X' placement [1-9]: 8

GAME OVER.

===============================

        Final Standings

 O |   | O          1 | 2 | 3
-----------        -----------
 O | X |            4 | 5 | 6
-----------        -----------
 X | X | X          7 | 8 | 9

===============================

__  __              _             _
\ \/ /    __      _(_)_ __  ___  | |
 \  /     \ \ /\ / / | '_ \/ __| | |
 /  \      \ V  V /| | | | \__ \ |_|
/_/\_\      \_/\_/ |_|_| |_|___/ (_)

```

## Technologies Used

- Ruby

## Credits

- Project by **Daniel Fletcher**
    - LinkedIn profile: [/in/DanielTheFletch](https://www.linkedin.com/in/danielthefletch)
    - Portfolio site: [daniel-fletcher-portfolio.com](https://www.daniel-fletcher-portfolio.com)
- Project specifications from **The Odin Project** online curriculum
    - Home page: [The Odin Project](https://www.theodinproject.com/)
    - Project specifications: [Tic Tac Toe](https://www.theodinproject.com/lessons/ruby-tic-tac-toe)