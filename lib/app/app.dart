import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/bloc/bloc.dart';
import 'package:flutter_git_hub_client/data/repository.dart';
import 'package:flutter_git_hub_client/ui/screens/home_screen.dart';

class GitHubClientApp extends StatelessWidget {
  final GitHubRepository githubRepository;

  GitHubClientApp({required this.githubRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      home: BlocProvider(
        create: (_) => SearchBloc(gitHubRepository: githubRepository),
        child: HomeScreen(),
      ),
    );
  }
}
