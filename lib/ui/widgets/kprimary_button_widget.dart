import 'package:flutter/material.dart';
import '../theme.dart';

class KprimaryButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final Function() onPressed;

  final double buttonHeight;

  KprimaryButtonWidget({
    required this.buttonColor,
    required this.textValue,
    required this.textColor,
    required this.onPressed,
    this.buttonHeight = 56,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(defaultCircular),
      elevation: 0,
      child: Container(
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(defaultCircular),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(defaultCircular),
            child: Center(
              child: Text(
                textValue,
                style: greenTextStyle.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
