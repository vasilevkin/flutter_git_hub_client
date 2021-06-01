import 'package:flutter/material.dart';
import 'package:flutter_git_hub_client/app/app.dart';
import 'package:flutter_git_hub_client/data/api_service.dart';
import 'package:flutter_git_hub_client/data/cache.dart';
import 'package:flutter_git_hub_client/data/repository.dart';

void main() {
  final apiService = GitHubApiService();
  final cache = GitHubCache();
  final gitHubRepository =
      GitHubRepository(apiService: apiService, cache: cache);

  runApp(GitHubClientApp(githubRepository: gitHubRepository));
}
