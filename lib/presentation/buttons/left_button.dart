import "package:flutter/material.dart";

class LeftButton extends StatefulWidget {
  const LeftButton({super.key});

  @override
  State<LeftButton> createState() => _LeftButtonState();
}

class _LeftButtonState extends State<LeftButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)), color: Color(0xFF2C2C3E), border: Border.all(color: Color(0xFF3A3A4A))),
          child: Icon(Icons.arrow_left_sharp, color: Colors.white)),
    );
  }
}
