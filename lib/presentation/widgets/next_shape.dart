import "package:flutter/material.dart";
import "package:flutter_gap/flutter_gap.dart";
import "package:tetrix/presentation/resources/tetrominoes.dart";

import "../preview_of_next_shape.dart";
import "../resources/tetrix_colors.dart";

class NextShape extends StatefulWidget {
  final TetrominoTypes type;
  const NextShape({super.key, required this.type});

  @override
  State<NextShape> createState() => _NextShapeState();
}

class _NextShapeState extends State<NextShape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)), color: TetrixColors.shadow, border: Border.all(color: TetrixColors.highlight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(5),
          Text("Next", style: TextStyle(color: Colors.white)),
          Gap(5),
          Padding(padding: EdgeInsets.all(5), child: PreviewOfNextShape(type: widget.type)),
        ],
      ),
    );
  }
}
