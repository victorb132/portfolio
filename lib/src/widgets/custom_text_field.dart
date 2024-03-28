import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/typography.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: PTypography.headingH6.copyWith(
        color: ZincColor.zinc500,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: PrimaryColor.white,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        hintText: hintText,
        hintStyle: PTypography.headingH6.copyWith(
          color: ZincColor.zinc500,
        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
