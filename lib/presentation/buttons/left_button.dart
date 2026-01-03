import "package:flutter/material.dart";

class LeftButton extends StatefulWidget {
  const LeftButton({super.key});

  @override
  State<LeftButton> createState() => _LeftButtonState();
}

class _LeftButtonState extends State<LeftButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_left_sharp));
  }
}
