import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/components/squart_button.dart';
import 'package:portfolio_victor/src/constants/typography.dart';
import 'package:portfolio_victor/src/models/button_models.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.only(
        left: 80.0,
        right: 80.0,
        top: 60,
      ),
      width: screenWidth / 1.3,
      constraints: const BoxConstraints(
        minHeight: 60.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // intro message
                Row(
                  children: [
                    Text(
                      "Hello I’am",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Victor Novais",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Mobile",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Developer",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Based In",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Brazil",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  "I'm Victor Novais Lorem Ipsum is simply dummy text of the printing and typesetting industry. \n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an \n unknown printer took a galley of type and scrambled it to specimen book.",
                  style: PTypography.paragraphP2.copyWith(
                    color: ZincColor.zinc500,
                  ),
                ),
                const SizedBox(height: 64),
                Row(
                  children: [
                    SquartButton(
                      onPressed: () {},
                      size: SquartleButton.small,
                      background: PrimaryColor.white,
                      foregroundColor: PrimaryColor.black,
                      borderColor: PrimaryColor.black,
                      icon: 'images/icons/facebook-icon.png',
                    ),
                    const SizedBox(width: 20),
                    SquartButton(
                      onPressed: () {},
                      size: SquartleButton.small,
                      background: PrimaryColor.white,
                      foregroundColor: PrimaryColor.black,
                      borderColor: PrimaryColor.black,
                      icon: 'images/icons/discord-icon.png',
                    ),
                    const SizedBox(width: 20),
                    SquartButton(
                      onPressed: () {},
                      size: SquartleButton.small,
                      background: PrimaryColor.white,
                      foregroundColor: PrimaryColor.black,
                      borderColor: PrimaryColor.black,
                      icon: 'images/icons/reddit-icon.png',
                    ),
                    const SizedBox(width: 20),
                    SquartButton(
                      onPressed: () {},
                      size: SquartleButton.small,
                      background: PrimaryColor.white,
                      foregroundColor: PrimaryColor.black,
                      borderColor: PrimaryColor.black,
                      icon: 'images/icons/twitter-icon.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
          // avatar img
          Expanded(
            child: Image.asset(
              "assets/images/banner_home.png",
              width: screenWidth / 2,
            ),
          )
        ],
      ),
    );
  }
}
