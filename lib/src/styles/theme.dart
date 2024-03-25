import 'package:flutter/material.dart';

import '../constants/colors.dart';

ThemeData kCustomTheme = ThemeData.dark().copyWith(
  iconTheme: const IconThemeData(
    color: PrimaryColor.white,
  ),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     backgroundColor: PrimaryColor.black,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(4),
  //     ),
  //     fixedSize: const Size.fromHeight(56),
  //     textStyle: const TextStyle(
  //       fontWeight: FontWeight.bold,
  //       fontSize: 16,
  //     ),
  //   ),
  // ),
);
