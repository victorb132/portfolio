import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/typography.dart';
import 'package:portfolio_victor/src/models/button_models.dart';

class SquartButton extends StatefulWidget {
  final String? text;
  final GestureTapCallback onPressed;
  final SquartleButton size;
  Color background;
  Color foregroundColor;
  final Color borderColor;
  final String icon;

  SquartButton({
    super.key,
    required this.size,
    this.text,
    required this.onPressed,
    this.background = Colors.black,
    this.foregroundColor = Colors.white,
    required this.icon,
    required this.borderColor,
  });

  @override
  State<SquartButton> createState() => _SquartButtonState();
}

class _SquartButtonState extends State<SquartButton> {
  @override
  Widget build(BuildContext context) {
    Color background = widget.background;
    Color foregroundColor = widget.foregroundColor;

    return InkWell(
      onTap: widget.onPressed,
      onHover: (val) {
        setState(() {
          if (val) {
            widget.background = foregroundColor;
            widget.foregroundColor = background;
          } else {
            widget.background = foregroundColor;
            widget.foregroundColor = background;
          }
        });
      },
      child: Container(
        width: widget.size == SquartleButton.small ? 56 : 186,
        height: widget.size == SquartleButton.small ? 56 : 186,
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: widget.borderColor,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.icon,
              color: widget.foregroundColor,
            ),
            widget.text != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      widget.text!,
                      style: PTypography.headingH5.copyWith(
                        color: widget.foregroundColor,
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
