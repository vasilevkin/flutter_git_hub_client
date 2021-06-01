import 'package:flutter_git_hub_client/models/models.dart';

abstract class Cache {
  bool contains(String text);

  SearchResult? get(String text);

  void set(String text, SearchResult result);

  void remove(String text);
}
