import "package:flutter/material.dart";
import "package:tetrix/data/preview_logic.dart";
import "package:tetrix/data/tetrominoes.dart";

class PreviewOfNextShape extends StatefulWidget {
  const PreviewOfNextShape({super.key});

  @override
  State<PreviewOfNextShape> createState() => _PreviewOfNextShapeState();
}

class _PreviewOfNextShapeState extends State<PreviewOfNextShape> {
  late Preview preview;
  @override
  void initState() {
    super.initState();
    preview = Preview();
    final testShape = shapes[TetrominoTypes.I];
    final colorIndex = shapeColors[TetrominoTypes.I];
    for (var box in testShape!) {
      int r = box[0];
      int c = box[1];
      preview.prev[r][c] = colorIndex!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(preview.rows, (r) {
        return Row(
          children: List.generate(preview.columns, (c) {
            final cell = preview.prev[r][c];
            final cellColor = blockColor[cell];
            return Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(color: cellColor, border: cellColor == Colors.transparent ? null : Border.all(color: Color(0xFF3A3A4A))),
            );
          }),
        );
      }),
    );
  }
}
