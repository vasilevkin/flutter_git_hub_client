import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/ui/widgets/search_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.mainTitle ?? Constants.empty),
      ),
      body: SearchForm(),
    );
  }
}
