import 'package:flutter/material.dart';
// import 'package:portfolio_victor/src/constants/sns_links.dart';
import 'package:portfolio_victor/src/constants/typography.dart';

import '../constants/colors.dart';
// import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  Key? keyContact;

  ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: keyContact,
      padding: const EdgeInsets.fromLTRB(25, 60, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          buildNameEmailFieldMobile(),
          const SizedBox(height: 15),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS icon button links
          // Wrap(
          //   spacing: 12,
          //   runSpacing: 12,
          //   alignment: WrapAlignment.center,
          //   children: [
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.github]);
          //       },
          //       child: Image.asset(
          //         "assets/github.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.linkedIn]);
          //       },
          //       child: Image.asset(
          //         "assets/linkedin.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.facebook]);
          //       },
          //       child: Image.asset(
          //         "assets/facebook.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.instagram]);
          //       },
          //       child: Image.asset(
          //         "assets/instagram.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.telegram]);
          //       },
          //       child: Image.asset(
          //         "assets/telegram.png",
          //         width: 28,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        // name
        TextField(
          cursorColor: PrimaryColor.black,
          decoration: InputDecoration(
              fillColor: PrimaryColor.black,
              focusColor: PrimaryColor.black,
              hoverColor: PrimaryColor.black,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: PrimaryColor.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: PrimaryColor.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              border: const OutlineInputBorder(),
              // labelText: 'Your name',
              label: Text(
                'Your name',
                style: PTypography.headingH6.copyWith(
                  color: ZincColor.zinc500,
                ),
              )),
        ),
        const SizedBox(height: 15),
        // email
        TextField(
          decoration: InputDecoration(
              fillColor: PrimaryColor.black,
              focusColor: PrimaryColor.black,
              hoverColor: PrimaryColor.black,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: PrimaryColor.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              border: const OutlineInputBorder(),
              // labelText: 'Your name',
              label: Text(
                'Email',
                style: PTypography.headingH6.copyWith(
                  color: ZincColor.zinc500,
                ),
              )),
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
              fillColor: PrimaryColor.black,
              focusColor: PrimaryColor.black,
              hoverColor: PrimaryColor.black,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: PrimaryColor.black),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              border: const OutlineInputBorder(),
              // labelText: 'Your name',
              label: Text(
                'Your website (If exists)',
                style: PTypography.headingH6.copyWith(
                  color: ZincColor.zinc500,
                ),
              )),
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            fillColor: PrimaryColor.black,
            focusColor: PrimaryColor.black,
            hoverColor: PrimaryColor.black,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: PrimaryColor.black),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            border: const OutlineInputBorder(),
            // labelText: 'Your name',
            label: Text(
              'How can I help?*',
              style: PTypography.headingH6.copyWith(
                color: ZincColor.zinc500,
              ),
            ),
          ),
          maxLines: 6,
        ),
      ],
    );
  }
}
