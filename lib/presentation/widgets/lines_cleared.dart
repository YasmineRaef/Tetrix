import "package:flutter/material.dart";

import "../resources/tetrix_colors.dart";
import "custom_window.dart";

class LinesCleared extends StatefulWidget {
  const LinesCleared({super.key});

  @override
  State<LinesCleared> createState() => _LinesClearedState();
}

class _LinesClearedState extends State<LinesCleared> {
  @override
  Widget build(BuildContext context) {
    return CustomWindow(title: "Lines", num: "45", color: TetrixColors.linesCleared);
  }
}
