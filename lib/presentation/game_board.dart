import "dart:async";

import "package:flutter/material.dart";
import "package:tetrix/presentation/resources/board_logic.dart";
import "package:tetrix/presentation/resources/tetrominoes.dart";

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late Game game;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    game = Game();

    timer = Timer.periodic(Duration(milliseconds: 400), (_) {
      setState(() {
        game.moveDown();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(game.rows, (r) {
        return Row(
          children: List.generate(game.cols, (c) {
            final cell = game.board[r][c];
            Color cellColor = blockColor[cell];

            for (var pixel in game.position) {
              var pixelRow = game.currentRow + pixel[0];
              var pixelCol = game.currentCol + pixel[1];

              if (pixelRow == r && pixelCol == c) {
                cellColor = blockColor[shapeColors[game.currentShape]!];
              }
            }

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
