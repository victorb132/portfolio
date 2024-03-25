import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/components/resume_button.dart';
import 'package:portfolio_victor/src/models/resume_button_models.dart';
import 'package:portfolio_victor/src/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/typography.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      margin: const EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 80.0,
      ),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SiteLogo(
            onTap: () {},
          ),
          Row(
            children: [
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {
                      onNavMenuTap(i);
                    },
                    child: Text(
                      navTitles[i],
                      style: PTypography.displayTextM
                          .copyWith(color: PrimaryColor.black),
                    ),
                  ),
                ),
            ],
          ),
          ResumeButton(
            onPressed: () {},
            text: "Resume",
            type: ResumeButtonType.primary,
            size: ResumeButtonSize.medium,
            foregroundColor: Colors.white,
            rightIcon: const Icon(
              Icons.download,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
