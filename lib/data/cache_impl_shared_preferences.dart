import 'dart:convert';

import 'package:flutter_git_hub_client/data/cache.dart';
import 'package:flutter_git_hub_client/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsGitHubCache implements Cache {
  late final SharedPreferences _cache;

  SharedPrefsGitHubCache() {
    init();
  }

  init() async {
    _cache = await SharedPreferences.getInstance();
  }

  bool contains(String text) => _cache.containsKey(text);

  SearchResult? get(String text) {
    Map<String, dynamic>? cashedMap;
    final String? cashedString = _cache.getString(text);
    if (cashedString != null) {
      cashedMap = jsonDecode(cashedString) as Map<String, dynamic>;
    }

    if (cashedMap != null) {
      final SearchResult result = SearchResult.fromJson(cashedMap);
      return result;
    }
    return null;
  }

  void set(String text, SearchResult result) {
    _cache.setString(text, jsonEncode(result));
  }

  void remove(String text) => _cache.remove(text);
}
