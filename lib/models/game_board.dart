import "package:flutter/material.dart";
import "package:tetrix/data/board_logic.dart";
import "package:tetrix/data/tetrominoes.dart";

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late Game game;
  @override
  void initState() {
    super.initState();
    game = Game();
    final testShape = shapes[TetrominoTypes.I];
    final colorIndex = shapeColors[TetrominoTypes.I];
    int displayRow = 6;
    int displayCol = 4;
    for (var box in testShape!) {
      int r = displayRow + box[0];
      int c = displayCol + box[1];
      game.board[r][c] = colorIndex!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(game.rows, (r) {
        return Row(
          children: List.generate(game.cols, (c) {
            final cell = game.board[r][c];
            final cellColor = blockColor[cell];
            return Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(color: cellColor, border: Border.all(color: Color(0xFF3A3A4A))),
            );
          }),
        );
      }),
    );
  }
}
