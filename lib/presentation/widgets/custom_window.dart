import "package:flutter/material.dart";

import "../resources/tetrix_colors.dart";

class CustomWindow extends StatelessWidget {
  final String title;
  final String num;
  final Color color;
  const CustomWindow({super.key, required this.title, required this.num, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)), color: TetrixColors.shadow, border: Border.all(color: TetrixColors.highlight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: TetrixColors.text)),
          Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                num,
                style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
