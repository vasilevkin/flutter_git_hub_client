import 'package:flutter/material.dart';
import 'package:flutter_git_hub_client/ui/widgets/search_bar.dart';
import 'package:flutter_git_hub_client/ui/widgets/search_body.dart';

class SearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        SearchBody(),
      ],
    );
  }
}
