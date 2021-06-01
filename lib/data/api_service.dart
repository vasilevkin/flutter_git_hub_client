import 'package:flutter_git_hub_client/models/models.dart';

abstract class ApiService {
  Future<SearchResult> search(String text);
}
