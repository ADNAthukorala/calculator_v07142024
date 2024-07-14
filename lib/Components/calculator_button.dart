import 'package:calculator_v07142024/constants.dart';
import 'package:flutter/material.dart';

class CmpCalculatorButton extends StatelessWidget {
  const CmpCalculatorButton({
    super.key,
    required this.title,
    this.buttonColor,
    required this.onPressed,
    this.titleColor,
    required this.buttonRadius,
  });

  final String title;
  final Color? titleColor;
  final Color? buttonColor;
  final double buttonRadius;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? kColor03,
            fixedSize: Size.fromRadius(buttonRadius)),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
              color: titleColor ?? kColor06,
              fontSize: 24.0,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
