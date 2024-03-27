import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/components/squart_button.dart';
import 'package:portfolio_victor/src/models/button_models.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // platforms
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: screenWidth / 1.5,
          ),
          child: Wrap(
            spacing: 20.0,
            runSpacing: 30.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                SquartButton(
                  size: SquartleButton.large,
                  background: PrimaryColor.white,
                  foregroundColor: PrimaryColor.black,
                  borderColor: PrimaryColor.black,
                  icon: platformItems[i]['img'],
                  onPressed: () {},
                  text: platformItems[i]['title'],
                )
            ],
          ),
        ),
      ],
    );
  }
}
