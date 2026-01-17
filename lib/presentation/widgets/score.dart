import "package:flutter/material.dart";

import "../resources/tetrix_colors.dart";
import "custom_window.dart";

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return CustomWindow(title: "Score", num: "1234", color: TetrixColors.text);
  }
}
