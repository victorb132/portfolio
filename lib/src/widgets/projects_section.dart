import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/typography.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
                "Experience",
                style: PTypography.displayText.copyWith(
                    color: PrimaryColor.white, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          const SizedBox(height: 50),
          // Hobby projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: i % 2 == 0
                              ? ZincColor.zinc800
                              : PrimaryColor.black,
                          border: Border.all(
                            color: i % 2 != 0
                                ? ZincColor.zinc500
                                : ZincColor.zinc800,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/google.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      'Lead Software Engineer at Google',
                                      style: PTypography.headingH4
                                          .copyWith(color: PrimaryColor.white),
                                    ),
                                  ),
                                  Text(
                                    'Nov 2019 - Present',
                                    style: PTypography.headingH6
                                        .copyWith(color: PrimaryColor.white),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "As a Senior Software Engineer at Google, I played a pivotal role in developing innovativesolutions for Google's core search algorithms. Collaborating with a dynamic team of engineers,I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide.",
                                style: PTypography.paragraphP2
                                    .copyWith(color: ZincColor.zinc300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
