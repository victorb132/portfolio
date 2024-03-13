import 'package:flutter/material.dart';

import 'components/container_mobile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ContainerMobile(
          body: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
