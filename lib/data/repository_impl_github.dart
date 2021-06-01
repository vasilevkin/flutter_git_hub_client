import 'package:flutter_git_hub_client/data/api_service.dart';
import 'package:flutter_git_hub_client/data/cache.dart';
import 'package:flutter_git_hub_client/data/repository.dart';
import 'package:flutter_git_hub_client/models/models.dart';

class GitHubRepository implements Repository {
  final ApiService apiService;
  final Cache cache;

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
