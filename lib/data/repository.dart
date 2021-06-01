import 'package:flutter_git_hub_client/models/models.dart';

class GitHubRepository {
  final apiService;
  final cache;

  GitHubRepository({required this.apiService, required this.cache});

  Future<SearchResult> search(String text) async {
    final cachedResult = cache.get(text);

    if (cachedResult != null) {
      return cachedResult;
    }
    final result = await apiService.search(text);
    cache.set(text, result);
    return result;
  }
}
