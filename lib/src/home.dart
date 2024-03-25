import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/colors.dart';
import 'package:portfolio_victor/src/constants/sns_links.dart';
import 'package:portfolio_victor/src/constants/typography.dart';
import 'package:portfolio_victor/src/widgets/contact_section.dart';
import 'package:portfolio_victor/src/widgets/main_desktop.dart';
import 'package:portfolio_victor/src/widgets/main_mobile.dart';
import 'package:portfolio_victor/src/widgets/projects_section.dart';
import 'package:portfolio_victor/src/widgets/skills_desktop.dart';
import 'package:portfolio_victor/src/widgets/skills_mobile.dart';
import 'dart:js' as js;
import '../src/constants/size.dart';

import '../src/widgets/drawer_mobile.dart';
import '../src/widgets/footer.dart';
import '../src/widgets/header_desktop.dart';
import '../src/widgets/header_mobile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  scrollToSection(navIndex);
                })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              SizedBox(key: navbarKeys.first),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              // SKILLS
              Padding(
                padding: const EdgeInsets.only(
                  left: 80.0,
                  right: 80.0,
                  top: 60.0,
                ),
                child: Container(
                  key: navbarKeys[1],
                  color: CustomColor.bgLight1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 80.0,
                      right: 80.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // title
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My",
                              style: PTypography.displayText.copyWith(
                                color: PrimaryColor.black,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Skills",
                              style: PTypography.displayText.copyWith(
                                  color: PrimaryColor.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),

                        // platforms and skills
                        if (constraints.maxWidth >= kMedDesktopWidth)
                          const SkillsDesktop()
                        else
                          const SkillsMobile(),
                      ],
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 30),

              // PROJECTS
              // ProjectsSection(
              //   key: navbarKeys[2],
              // ),

              // const SizedBox(height: 30),

              // CONTACT
              // ContactSection(
              //   key: navbarKeys[3],
              // ),
              const SizedBox(height: 30),

              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
