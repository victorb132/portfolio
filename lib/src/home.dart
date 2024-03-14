import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/components/git_repositories.dart';

import 'components/container_mobile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Center(
                child: ContainerMobile(
                  body: GitRepositories(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
