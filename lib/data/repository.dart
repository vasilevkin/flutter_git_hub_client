import 'package:flutter_git_hub_client/models/models.dart';

abstract class Repository {
  Future<SearchResult> search(String text);
}
