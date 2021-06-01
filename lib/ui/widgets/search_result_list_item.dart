import 'package:flutter/material.dart';
import 'package:flutter_git_hub_client/models/models.dart';

class SearchResultListItem extends StatelessWidget {
  final SearchResultItem item;

  const SearchResultListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(item.owner.avatarUrl),
      ),
      title: Text(item.fullName),
    );
  }
}
