import 'package:flutter/material.dart';
import 'package:flutter_git_hub_client/models/models.dart';
import 'package:flutter_git_hub_client/ui/widgets/search_result_list_item.dart';

class SearchResults extends StatelessWidget {
  final List<SearchResultItem> items;

  const SearchResults({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SearchResultListItem(item: items[index]);
      },
    );
  }
}
