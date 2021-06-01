import 'dart:convert';

import 'package:flutter_git_hub_client/models/models.dart';
import 'package:http/http.dart' as http;

class GitHubApiService {
  final String baseUrl;
  final http.Client httpClient;

  GitHubApiService({
    this.baseUrl = 'https://api.github.com/search/repositories?q=',
    http.Client? httpClient,
  }) : this.httpClient = httpClient ?? http.Client();

  Future<SearchResult> search(String text) async {
    final response = await httpClient.get(Uri.parse('$baseUrl$text'));
    final results = json.decode(response.body);

    if (response.statusCode == 200) {
      return SearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }
  }
}
