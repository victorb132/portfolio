import 'package:flutter/material.dart';
import 'package:portfolio_victor/src/util/read_json.dart';

import 'git_repositories_item.dart';

class GitRepositories extends StatefulWidget {
  const GitRepositories({super.key});

  @override
  State<GitRepositories> createState() => _GitRepositoriesState();
}

class _GitRepositoriesState extends State<GitRepositories> {
  var list = [];

  @override
  void initState() {
    super.initState();
    final data = ReadJson.readJson('assets/repositories.json');
    data.then((value) {
      setState(() {
        list.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.78,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        children: list
            .map(
              (repository) => GitRepositoriesItem(
                image: repository['owner']['avatar_url'],
                name: repository['name'],
                description: repository['description'],
                language: repository['language'],
                stars: repository['stars'],
                forks: repository['forks'],
              ),
            )
            .toList(),
      ),
    );
  }
}
