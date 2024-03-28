import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/colors.dart';

class ContainerMobile extends StatelessWidget {
  final Widget body;

  const ContainerMobile({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.25;
    final height = MediaQuery.of(context).size.height * 0.9;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: PrimaryColor.white,
          width: 10,
        ),
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(
                  child: SizedBox(
                    child: Row(
                      children: [
                        SizedBox(width: 3),
                        Text(
                          '9:25',
                          style: TextStyle(
                            color: PrimaryColor.white,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.gps_fixed_rounded,
                          size: 10,
                          color: PrimaryColor.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width * 0.4,
                  height: 27,
                  decoration: const BoxDecoration(
                    color: PrimaryColor.white,
                    borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.signal_cellular_4_bar,
                          size: 15,
                          color: PrimaryColor.white,
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.signal_wifi_4_bar,
                          size: 15,
                          color: PrimaryColor.white,
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.battery_full,
                          size: 15,
                          color: PrimaryColor.white,
                        ),
                        SizedBox(width: 3),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: body,
            ),
            Container(
              width: width * 0.4,
              height: 5,
              decoration: const BoxDecoration(
                color: PrimaryColor.white,
                borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
