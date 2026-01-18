import "package:flutter/material.dart";
import "package:tetrix/presentation/widgets/custom_button.dart";

class RightButton extends StatefulWidget {
  const RightButton({super.key});

  @override
  State<RightButton> createState() => _RightButtonState();
}

class _RightButtonState extends State<RightButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(iconData: Icons.arrow_right_sharp, func: () => {});
  }
}
