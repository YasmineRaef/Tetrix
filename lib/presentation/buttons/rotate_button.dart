import "package:flutter/material.dart";

class RotateButton extends StatefulWidget {
  const RotateButton({super.key});

  @override
  State<RotateButton> createState() => _RotateButtonState();
}

class _RotateButtonState extends State<RotateButton> {
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
          child: Icon(Icons.rotate_90_degrees_ccw_sharp, color: Colors.white)),
    );
  }
}
