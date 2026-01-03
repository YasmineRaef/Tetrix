import "package:flutter/material.dart";

class RightButton extends StatefulWidget {
  const RightButton({super.key});

  @override
  State<RightButton> createState() => _RightButtonState();
}

class _RightButtonState extends State<RightButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_right_sharp));
  }
}
