import "package:flutter/material.dart";
import "package:tetrix/presentation/widgets/custom_button.dart";

class LeftButton extends StatefulWidget {
  const LeftButton({super.key});

  @override
  State<LeftButton> createState() => _LeftButtonState();
}

class _LeftButtonState extends State<LeftButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(iconData: Icons.arrow_left_sharp, func: () => {});
  }
}
