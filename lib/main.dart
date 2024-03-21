import 'package:flutter/material.dart';

import 'package:portfolio_victor/src/home.dart';
import 'package:portfolio_victor/src/styles/theme.dart';
import 'package:portfolio_victor/src/utils/app_scroll_behavior.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: kCustomTheme,
      scrollBehavior: AppScrollBehavior(),
      title: 'Portfólio Victor',
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}
