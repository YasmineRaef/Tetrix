import "package:flutter/material.dart";
import "package:tetrix/data/board_logic.dart";

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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(game.rows, (r) {
        return Row(
          children: List.generate(game.cols, (c) {
            final cell = game.board[r][c];
            return Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(color: cell == 0 ? Colors.black : Colors.blue, border: Border.all(color: Color(0xFF3A3A4A))),
            );
          }),
        );
      }),
    );
  }
}
