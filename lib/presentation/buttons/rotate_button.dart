import "package:flutter/material.dart";
import "package:tetrix/presentation/widgets/custom_button.dart";

class RotateButton extends StatefulWidget {
  const RotateButton({super.key});

  @override
  State<RotateButton> createState() => _RotateButtonState();
}

class _RotateButtonState extends State<RotateButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(iconData: Icons.rotate_90_degrees_ccw_sharp, func: () => {});
  }
}
