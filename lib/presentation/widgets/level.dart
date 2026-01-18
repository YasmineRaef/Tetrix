import "package:flutter/material.dart";

import "../resources/tetrix_colors.dart";
import "custom_window.dart";

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return CustomWindow(title: "Level", num: "22", color: TetrixColors.tetrominoI);
  }
}
