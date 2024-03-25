import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/typography.dart';
import 'package:portfolio_victor/src/models/button_models.dart';

class SquartButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback onPressed;
  final SquartleButton size;
  final Color background;
  final Color foregroundColor;
  final Color borderColor;
  final Image icon;

  const SquartButton({
    super.key,
    required this.size,
    this.text,
    required this.onPressed,
    required this.background,
    required this.foregroundColor,
    required this.icon,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size == SquartleButton.small ? 56 : 186,
        height: size == SquartleButton.small ? 56 : 186,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            text != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      text!,
                      style: PTypography.headingH5.copyWith(
                        color: foregroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
