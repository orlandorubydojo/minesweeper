# Minesweeper

We implemented a class that prints a random 4 x 6 Minesweeper field
(without the numbers).

Usage:

```ruby
field = MinesweeperField.create
field.size # Number of rows
field[0].size # Number of columns
```

Sample output:

```
_ * _ _ _ _
_ _ _ * _ _
* _ _ _ _ _
_ * _ _ * _
```

## At Home Exercises
1. Implement the `to_s` (to String) method that prints the field to the console.
  You can use the Ruby command `puts` to print to the console, as in
  `puts field.to_s`.
2. Make the field have a random number of rows and columns between 4 and 10.
3. Allow the size of the field to be passed in on creation.
  Example: `MinesweeperField.create(3, 7)`
