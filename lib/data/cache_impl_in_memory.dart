import 'package:flutter_git_hub_client/data/cache.dart';
import 'package:flutter_git_hub_client/models/models.dart';

class GitHubCache implements Cache {
  final _cache = <String, SearchResult>{};

  bool contains(String text) => _cache.containsKey(text);

  SearchResult? get(String text) => _cache[text];

  void set(String text, SearchResult result) => _cache[text] = result;

  void remove(String text) => _cache.remove(text);
}
