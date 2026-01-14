import "package:flutter/material.dart";
import "package:flutter_gap/flutter_gap.dart";
import "package:tetrix/models/preview_of_next_shape.dart";

class NextShape extends StatefulWidget {
  const NextShape({super.key});

  @override
  State<NextShape> createState() => _NextShapeState();
}

class _NextShapeState extends State<NextShape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Color(0xFF2C2C3E), border: Border.all(color: Color(0xFF3A3A4A))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(5),
          Text("Next", style: TextStyle(color: Colors.white)),
          Gap(5),
          Padding(padding: EdgeInsets.all(5), child: PreviewOfNextShape()),
        ],
      ),
    );
  }
}
