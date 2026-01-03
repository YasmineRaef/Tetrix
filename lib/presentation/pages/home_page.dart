import 'package:flutter/material.dart';

import '../../models/game_board.dart';
import '../buttons/left_button.dart';
import '../buttons/right_button.dart';
import '../buttons/rotate_button.dart';
import '../widgets/level.dart';
import '../widgets/lines_cleared.dart';
import '../widgets/next_shape.dart';
import '../widgets/score.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF1A1A2E),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF2C2C3E),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.pause),
                    color: Color(0xFFE0E0E0),
                  ),
                ),
              ),
              Text(
                "TETRIX",
                style: TextStyle(color: Color(0xFFE0E0E0)),
              ),
              Icon(Icons.games, size: 32, color: Color(0xFFE0E0E0))
            ],
          )),
      backgroundColor: Color(0xFF1A1A2E),
      body: Column(
        children: [
          Row(
            children: [
              GameBoard(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [NextShape(), Score(), Level(), LinesCleared()],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [LeftButton(), RotateButton(), RightButton()],
          )
        ],
      ),
    );
  }
}
