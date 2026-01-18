import 'package:flutter/material.dart';

import '../resources/tetrix_colors.dart';

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback func;
  const CustomButton({super.key, required this.iconData, required this.func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      splashColor: TetrixColors.transparent,
      highlightColor: TetrixColors.transparent,
      child: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)), color: TetrixColors.shadow, border: Border.all(color: TetrixColors.highlight)),
          child: Icon(iconData, color: TetrixColors.text)),
    );
  }
}
