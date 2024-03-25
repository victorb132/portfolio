import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/constants/colors.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Resume"),
          SizedBox(width: 10),
          Icon(
            Icons.download,
            size: 18,
          ),
        ],
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: PrimaryColor.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        fixedSize: const Size.fromHeight(56),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
