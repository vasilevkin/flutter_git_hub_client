import 'package:dio/dio.dart';
import 'package:flutter_git_hub_client/data/api_service.dart';
import 'package:flutter_git_hub_client/models/models.dart';

class DioGitHubApiService implements ApiService {
  final String baseUrl;
  final Dio httpClient;

  DioGitHubApiService({
    this.baseUrl = 'https://api.github.com/search/repositories?q=',
    Dio? httpClient,
  }) : this.httpClient = httpClient ?? Dio();

  Future<SearchResult> search(String text) async {
    final response = await httpClient.get('$baseUrl$text');
    final results = response.data;

    if (response.statusCode == 200) {
      return SearchResult.fromJson(results);
    } else {
      throw SearchResultError.fromJson(results);
    }
  }
}
