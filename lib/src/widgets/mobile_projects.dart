import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/components/container_mobile.dart';
import 'package:portfolio_victor/src/constants/typography.dart';

import '../constants/colors.dart';

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: PrimaryColor.black,
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: PTypography.displayText.copyWith(
                  color: PrimaryColor.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "Projects",
                style: PTypography.displayText.copyWith(
                    color: PrimaryColor.white, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          const SizedBox(height: 50),
          ContainerMobile(body: Container()),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
