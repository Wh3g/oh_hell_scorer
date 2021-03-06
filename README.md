# Oh Hell Scorecard

This is a programme that calculates the scores for a game of Oh Hell. 

## Rules

The basic rules for the card game Oh Hell are as follows:
* At the start of each hand, each player makes a *bid*, which is how many *tricks* they think they will win on their hand.
* At the end of the hand, when all tricks have been one, the scores are counted, and each player gains or loses a certain number of points depending on how many tricks they won compared to their original bid.
* If a player has achieved their bid, they win 10 points, plus 5 points for each trick they one. (example1: bid = 0, tricks = 0, points = 10; example2: bid = 1, tricks = 1, points = 15).
* However, if a player wins too many tricks, or too few, then they lose points, -5 points for every trick over or under their bid. (example1: bid = 0, tricks = 1, points = -5; example2: bid = 2, tricks = 0, points = -10).

## User Stories

```
As a player,
So I can keep score,
I want to be able to calculate the scores for each hand.

As a player,
So I can keep track of the game,
I want to save my scores.

As a player,
So I can play the game with others,
I want to create a new game and add players.

As a player,
So I know who wins the game,
I want to see the scores for each player in the game.

As a scorekeeper,
So I can keep score,
I want to choose a specific player and add to their score.
```

## Installation

In order to run this program on your own machine, you can simply clone this repository and run the following commands to install the relevant gems:

```
cd oh_hell_scorer
bundle install # This installs the gems in the Gemfile
irb
  > require "./lib/game"
```

## Testing

This program is testing using RSpec, which means that you can run all the tests by running the command `rspec` in the directory, this will also show you the test coverage for the program as well.

## Approach

In building this program, I used TDD practices where I would write a simple test, and then write code that could pass the tests in the simplest way.

I started with the the `Scorecard` class, which calculates the scores in the `#hand_score` method, and saves it in the `@scores`.

Next there is the `Player` class, which has two instance variables, `@name`, which is the name of each player, and `@scorecard` which saves a `Scorecard` instance to each player.

Finally there is the `Game` class, where the user can create new `Player` instances and they will be saved to `@players`.
