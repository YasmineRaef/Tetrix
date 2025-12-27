# Tetrix
Tetrix is a custom Tetris-style puzzle game that I’m building completely from scratch using Flutter and Dart.

## General/Cool Info about Tetris game to know ✨:
- Tetris is a game built primarly on the basis of the number 4 (Tetra in Greek language).
- All shapes are basically patterns made with four blocks and are named Tetrominos (Tetra -> 4 & minos-> shapes).
- There are primarly 5 shapes which are (I, O, T, S, AND L). There are other shapes that are the result of rotation of these main shapes (Z rotation of S) and (J rotation of L).  
    I              
🟦🟦🟦🟦  
  O         
🟨🟨  
🟨🟨  
   T  
🟪🟪🟪  
⬛🟪⬛  
   S  
⬛🟩🟩  
🟩🟩⬛  
   Z  
🟥🟥⬛  
⬛🟥🟥  
   L  
🟧⬛⬛  
🟧🟧🟧  
   J  
⬛⬛🟦  
🟦🟦🟦  

## Game Rules:
There are standard rules for the basic game and extra features associated with the modern game of Tetris. I will build the basic game but I will mention the extra features here too.

## Gameboard System:
-> Standard:  
- 10 columns and 20 rows combined in a grid.  
- There are extra 2-4 rows at the top of the grid 'basically hidden from the user', where the shape that falls from the top exists first, where it could be freely rotated by the user.  
- The system detects when a row is completely filled, it then clears that row, and moves all the rows that were above that row down by 1.  
- Every ten rows cleared, the level of the game increases by one. The higher the level, the faster the falling of the tetrominos.  
- Stacking of tetrominos continues until it reaches the end of the grid.  

-> My system:
- Mostly the same as the standard, except that the grid I will build will be a 10 column by 12 rows instead of the 20. And that is for simplifying the processing of the game by the mobile phones and the screen size that I am limited to.

## Scoring System:
-> Standard & My System:  
- The tetris game is built upon the Nintendo Scroing System, which is a system that depends heavily on the level the user is in.  
- Based on that system & for level 0 -(the user just started the game)-, if 1 line was cleared, the user wins 40 points, if 2 were cleared at once, the user wins 100 points.   
If 3 were cleared at once, the user wins 300 points, and if 4, the user wins 1200 points. Which makes sense, as clearing 4 'tetra' has to be 4x the points earned from clearing one row.  
And that is the maximum number of rows a user can clear 'at once' using one shape, basically the I shape.  
- Now, the higher the level the more the points, as the points are computed from the following equation: **Basic * (level + 1)**. Where basic is the basic points for level 0 (e.g 40, 100, 300, 1200).  
For instance, let's say a user is at level 5, and he cleared 3 rows at once, the points he will win from clearing those rows are (300 * (5 + 1)) = 1800 points.

## Extra features in modern tetris:
  - Hard and soft drop (you increase the speed of the falling tetromino to earn more points).
  - Hold button (A placeholder that holds one tetromino you don't want to put right now, and let's the next shape come).
  - Extra points for rows cleared simultaneously.
  - Rows and Columns cleared at once earns you extra points.
  - Pentomio systems (shapes are built in different patterns composed each of 5 blocks).

## Prototype for the UI of the main game (generated with Google Stitch):
<img width="250" height="500" alt="Tetris_Screen" src="https://github.com/user-attachments/assets/0393edf8-dee3-4edc-80b6-48073cc2a5fe" />
