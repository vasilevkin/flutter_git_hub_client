import 'package:flutter/material.dart';
import 'package:flutter_git_hub_client/app/app.dart';
import 'package:flutter_git_hub_client/data/api_service.dart';
import 'package:flutter_git_hub_client/data/api_service_impl_dio.dart';
import 'package:flutter_git_hub_client/data/cache.dart';
import 'package:flutter_git_hub_client/data/cache_impl_in_memory.dart';
import 'package:flutter_git_hub_client/data/repository.dart';
import 'package:flutter_git_hub_client/data/repository_impl_github.dart';

void main() {
  final ApiService apiService = DioGitHubApiService();
  final Cache cache = GitHubCache();
  final Repository repository =
      GitHubRepository(apiService: apiService, cache: cache);

  runApp(GitHubClientApp(repository: repository));
}
