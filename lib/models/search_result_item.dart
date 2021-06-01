import 'models.dart';

class SearchResultItem {
  final String fullName;
  final String htmlUrl;
  final GitHubOwner owner;

  const SearchResultItem({
    required this.fullName,
    required this.htmlUrl,
    required this.owner,
  });

  static SearchResultItem fromJson(dynamic json) {
    return SearchResultItem(
      fullName: json['full_name'] as String,
      htmlUrl: json['html_url'] as String,
      owner: GitHubOwner.fromJson(json['owner']),
    );
  }
}
