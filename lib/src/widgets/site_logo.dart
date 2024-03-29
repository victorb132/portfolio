import 'package:flutter/material.dart';

// import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Image(
        image: AssetImage('assets/images/logo.png'),
        height: 240.0,
      ),
    );
  }
}
