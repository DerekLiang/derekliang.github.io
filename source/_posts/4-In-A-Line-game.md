title: 4 In A Line game
author: Derek Liang
tags:
  - AI
categories: []
date: 2018-04-08 15:12:00
---
I was working 4 in A Line game engine. The objective is the use the Monte Carlo tree search the best move. Later I will have to use the NN to enhance it to see if it is better than the brutal force search algorithm.

While I am still getting use to Python syntax and gotcha, I made the first version that can play against itself. Here is what I have learnt from coding Python for the small project so far. Since the language is loosely typed and I am so get used to typed language, it is quite tedious to refactor the code especially when I have to move code around and change the type/shape of the variables. Common problems like missing brackets when calling a function(it actually works and no runtime error) make debugging really bad experience.

As for the Monte Carlo tree search algorithm, it seems that it takes lots of CPU cycles to really get some basic moves right. I am using UCT optimization for the search algorithm. At round 1000 total nodes in the search tree (SimTree) and about 2 minute of CPU time to play a 19-move (both player) game. Python probablly is not the best language to implement the algorithm. The search speed exponentially slow down when more nodes gets added to the tree.

Here is one the self playing game. Player red and yellow are playing a 7x6 board.

### reference
http://www.cs.utexas.edu/~pstone/Courses/394Rspring13/resources/mcrave.pdf

```
--------red at position 3
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]]

--------yellow at position 4
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 2 0 0]]

--------red at position 3
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 1 2 0 0]]

--------yellow at position 3
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 2 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 1 2 0 0]]

--------red at position 3
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 2 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 1 2 0 0]]

--------yellow at position 4
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 2 0 0 0]
 [0 0 0 1 2 0 0]
 [0 0 0 1 2 0 0]]

--------red at position 4
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 2 1 0 0]
 [0 0 0 1 2 0 0]
 [0 0 0 1 2 0 0]]

--------yellow at position 1
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 0 0 0]
 [0 0 0 2 1 0 0]
 [0 0 0 1 2 0 0]
 [0 2 0 1 2 0 0]]

--------red at position 4
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 1 0 0]
 [0 0 0 2 1 0 0]
 [0 0 0 1 2 0 0]
 [0 2 0 1 2 0 0]]

--------yellow at position 1
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 1 0 0]
 [0 0 0 2 1 0 0]
 [0 2 0 1 2 0 0]
 [0 2 0 1 2 0 0]]

--------red at position 1
[[0 0 0 0 0 0 0]
 [0 0 0 0 0 0 0]
 [0 0 0 1 1 0 0]
 [0 1 0 2 1 0 0]
 [0 2 0 1 2 0 0]
 [0 2 0 1 2 0 0]]

--------yellow at position 4
[[0 0 0 0 0 0 0]
 [0 0 0 0 2 0 0]
 [0 0 0 1 1 0 0]
 [0 1 0 2 1 0 0]
 [0 2 0 1 2 0 0]
 [0 2 0 1 2 0 0]]

--------red at position 6
[[0 0 0 0 0 0 0]
 [0 0 0 0 2 0 0]
 [0 0 0 1 1 0 0]
 [0 1 0 2 1 0 0]
 [0 2 0 1 2 0 0]
 [0 2 0 1 2 0 1]]

--------yellow at position 6
[[0 0 0 0 0 0 0]
 [0 0 0 0 2 0 0]
 [0 0 0 1 1 0 0]
 [0 1 0 2 1 0 0]
 [0 2 0 1 2 0 2]
 [0 2 0 1 2 0 1]]

--------red at position 6
[[0 0 0 0 0 0 0]
 [0 0 0 0 2 0 0]
 [0 0 0 1 1 0 0]
 [0 1 0 2 1 0 1]
 [0 2 0 1 2 0 2]
 [0 2 0 1 2 0 1]]

--------yellow at position 1
[[0 0 0 0 0 0 0]
 [0 0 0 0 2 0 0]
 [0 2 0 1 1 0 0]
 [0 1 0 2 1 0 1]
 [0 2 0 1 2 0 2]
 [0 2 0 1 2 0 1]]

--------red at position 3
[[0 0 0 0 0 0 0]
 [0 0 0 1 2 0 0]
 [0 2 0 1 1 0 0]
 [0 1 0 2 1 0 1]
 [0 2 0 1 2 0 2]
 [0 2 0 1 2 0 1]]

--------yellow at position 5
[[0 0 0 0 0 0 0]
 [0 0 0 1 2 0 0]
 [0 2 0 1 1 0 0]
 [0 1 0 2 1 0 1]
 [0 2 0 1 2 0 2]
 [0 2 0 1 2 2 1]]

--------red at position 5
[[0 0 0 0 0 0 0]
 [0 0 0 1 2 0 0]
 [0 2 0 1 1 0 0]
 [0 1 0 2 1 0 1]
 [0 2 0 1 2 1 2]
 [0 2 0 1 2 2 1]]
game finished and result is:red win


```



