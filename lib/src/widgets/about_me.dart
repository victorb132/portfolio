import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/colors.dart';
import 'package:portfolio_victor/src/constants/typography.dart';

class AboutMe extends StatelessWidget {
  Key? keyAbout;

  AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: keyAbout,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(25, 60, 25, 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/about-me.png",
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "About",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Me",
                      style: PTypography.displayText.copyWith(
                        color: PrimaryColor.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "I'm a software engineer with a passion for creating and developing software solutions. \nI have experience in developing web applications, mobile applications, and APIs. \nI'm always looking for new challenges and opportunities to learn and grow.",
                  style: PTypography.paragraphP2.copyWith(
                    color: ZincColor.zinc500,
                  ),
                ),
                Text(
                  "I'm a software engineer with a passion for creating and developing software solutions. \nI have experience in developing web applications, mobile applications, and APIs. \nI'm always looking for new challenges and opportunities to learn and grow.",
                  style: PTypography.paragraphP2.copyWith(
                    color: ZincColor.zinc500,
                  ),
                ),
                Text(
                  "I'm a software engineer with a passion for creating and developing software solutions. \nI have experience in developing web applications, mobile applications, and APIs. \nI'm always looking for new challenges and opportunities to learn and grow.",
                  style: PTypography.paragraphP2.copyWith(
                    color: ZincColor.zinc500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
