import "package:flutter/material.dart";

class RotateButton extends StatefulWidget {
  const RotateButton({super.key});

  @override
  State<RotateButton> createState() => _RotateButtonState();
}

class _RotateButtonState extends State<RotateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Icon(Icons.rotate_90_degrees_ccw_sharp));
  }
}
