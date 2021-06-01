import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/bloc/bloc.dart';
import 'package:flutter_git_hub_client/data/repository.dart';
import 'package:flutter_git_hub_client/ui/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class GitHubClientApp extends StatelessWidget {
  final GitHubRepository githubRepository;

  GitHubClientApp({required this.githubRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ru', ''),
      ],
      home: BlocProvider(
        create: (_) => SearchBloc(gitHubRepository: githubRepository),
        child: HomeScreen(),
      ),
    );
  }
}
