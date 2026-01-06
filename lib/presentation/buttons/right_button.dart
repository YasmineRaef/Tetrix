import "package:flutter/material.dart";

class RightButton extends StatefulWidget {
  const RightButton({super.key});

  @override
  State<RightButton> createState() => _RightButtonState();
}

class _RightButtonState extends State<RightButton> {
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
          child: Icon(Icons.arrow_right_sharp, color: Colors.white)),
    );
  }
}
