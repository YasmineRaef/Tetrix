import "package:flutter/material.dart";
import "package:tetrix/presentation/resources/preview_logic.dart";
import "package:tetrix/presentation/resources/tetrominoes.dart";

class PreviewOfNextShape extends StatefulWidget {
  final TetrominoTypes type;
  const PreviewOfNextShape({super.key, required this.type});

  @override
  State<PreviewOfNextShape> createState() => _PreviewOfNextShapeState();
}

class _PreviewOfNextShapeState extends State<PreviewOfNextShape> {
  late Preview preview;
  @override
  void initState() {
    super.initState();
    preview = Preview();
    final testShape = shapes[widget.type];
    final color = blockColor[shapeColors[widget.type]!];
    for (var box in testShape!) {
      int r = box[0];
      int c = box[1];
      preview.prev[r][c] = color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(preview.rows, (r) {
        return Row(
          children: List.generate(preview.columns, (c) {
            final cellColor = preview.prev[r][c] ?? Colors.transparent;
            return Container(
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: cellColor, border: cellColor == Colors.transparent ? null : Border.all(color: const Color(0xFF3A3A4A))),
            );
          }),
        );
      }),
    );
  }
}
