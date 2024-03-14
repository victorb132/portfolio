import 'package:flutter/material.dart';

import 'package:portfolio_victor/src/home.dart';
import 'package:portfolio_victor/src/util/app_scroll_behavior.dart';

void main() async {
  runApp(
    MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'Portfólio Victor',
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  );
}
