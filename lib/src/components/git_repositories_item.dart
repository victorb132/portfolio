import 'package:flutter/material.dart';

class GitRepositoriesItem extends StatelessWidget {
  final String name;
  final String? description;
  final String? language;
  final int? stars;
  final int? forks;
  final String? image;

  const GitRepositoriesItem({
    super.key,
    required this.name,
    this.description = '',
    this.language = '',
    this.stars = 0,
    this.forks = 0,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: NetworkImage(image ?? '')),
        Text(
          name,
          style: const TextStyle(
            color: Color(0xFFF4DFC8),
            fontSize: 20,
          ),
        ),
        Text(
          description ?? '',
          style: const TextStyle(
            color: Color(0xFFF4DFC8),
            fontSize: 15,
          ),
        ),
        Text(
          language ?? '',
          style: const TextStyle(
            color: Color(0xFFF4DFC8),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
