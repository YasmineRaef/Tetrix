import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:tetrix/presentation/resources/tetrix_colors.dart';

import '../game_board.dart';
import '../buttons/left_button.dart';
import '../buttons/right_button.dart';
import '../buttons/rotate_button.dart';
import '../widgets/level.dart';
import '../widgets/lines_cleared.dart';
import '../widgets/next_shape.dart';
import '../widgets/score.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TetrixColors.bgColor,
      appBar: buildTetrixAppBar(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                GameBoard(),
                Gap(7),
                Column(
                  children: [NextShape(), Gap(75), Score(), Gap(25), Level(), Gap(25), LinesCleared()],
                )
              ],
            ),
            Gap(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [LeftButton(), RotateButton(), RightButton()],
            )
          ],
        ),
      ),
    );
  }
}

AppBar buildTetrixAppBar() {
  return AppBar(
      centerTitle: true,
      backgroundColor: TetrixColors.bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: TetrixColors.shadow,
            child: Icon(Icons.pause, color: TetrixColors.text),
          ),
          Text(
            "TETRIX",
            style: TextStyle(color: TetrixColors.text),
          ),
          Icon(Icons.games, size: 32, color: TetrixColors.text)
        ],
      ));
}
