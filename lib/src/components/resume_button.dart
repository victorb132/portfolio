import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/colors.dart';
import 'package:portfolio_victor/src/constants/typography.dart';
import 'package:portfolio_victor/src/models/button_models.dart';

class ResumeButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback onPressed;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final ResumeButtonSize size;
  final ResumeButtonType type;
  final Color background;
  final Color foregroundColor;
  final Color defaultBorderColor;
  final bool autoResize;
  final double borderLineWidth;
  final bool removePaddings;
  final MainAxisAlignment horizontalAlignment;

  const ResumeButton({
    super.key,
    this.text,
    required this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.size = ResumeButtonSize.medium,
    this.type = ResumeButtonType.primary,
    this.background = PrimaryColor.black,
    this.foregroundColor = Colors.white,
    this.defaultBorderColor = PrimaryColor.black,
    this.autoResize = true,
    this.borderLineWidth = 1,
    this.removePaddings = false,
    this.horizontalAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    // Define a list to store our button's inner elements
    var children = <Widget>[];

    // If a left icon is provided, add it to the button
    if (leftIcon != null) {
      children.add(Padding(
        padding: EdgeInsets.only(
          right: removePaddings
              ? 0
              : text != null
                  ? (size == ResumeButtonSize.medium
                      ? 18
                      : size == ResumeButtonSize.medium
                          ? 14
                          : 9)
                  : rightIcon != null
                      ? (size == ResumeButtonSize.small ? 5 : 10)
                      : 0,
        ),
        child: leftIcon!,
      ));
    }

    // If text is provided, add it to the button
    if (text != null) {
      children.add(Text(
        text!,
        style: PTypography.buttonText.copyWith(
          color: PrimaryColor.white,
          fontWeight: FontWeight.w600,
        ),
      ));
    }

    // If a right icon is provided, add it to the button
    if (rightIcon != null) {
      children.add(Padding(
        padding: EdgeInsets.only(
          left: removePaddings
              ? 0
              : text != null
                  ? (size == ResumeButtonSize.medium
                      ? 18
                      : size == ResumeButtonSize.medium
                          ? 14
                          : 9)
                  : leftIcon != null
                      ? (size == ResumeButtonSize.small ? 5 : 10)
                      : 0,
        ),
        child: rightIcon!,
      ));
    }

    // Return the final button
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      elevation: 0,
      focusElevation: 2,
      highlightElevation: 0,
      hoverElevation: 0,
      fillColor: background,
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          side: type == ResumeButtonType.primary
              ? BorderSide.none
              : BorderSide(color: defaultBorderColor, width: borderLineWidth),
          borderRadius: BorderRadius.all(
              Radius.circular(size == ResumeButtonSize.small ? 2 : 4))),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            removePaddings
                ? 0
                : (leftIcon != null
                    ? size == ResumeButtonSize.medium
                        ? 18
                        : 8
                    : (size == ResumeButtonSize.medium
                        ? 18
                        : (size == ResumeButtonSize.small && text == null
                            ? 8
                            : 16))),
            removePaddings ? 0 : (size == ResumeButtonSize.small ? 8 : 12),
            removePaddings
                ? 0
                : (rightIcon != null
                    ? (size == ResumeButtonSize.medium
                        ? 18
                        : size == ResumeButtonSize.medium
                            ? 16
                            : 8)
                    : (size == ResumeButtonSize.medium
                        ? 24
                        : (size == ResumeButtonSize.small && text == null
                            ? 8
                            : 16))),
            removePaddings ? 0 : (size == ResumeButtonSize.small ? 8 : 12)),
        child: Row(
          mainAxisSize: autoResize ? MainAxisSize.min : MainAxisSize.max,
          mainAxisAlignment: horizontalAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
