import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'search_result_item.g.dart';

@JsonSerializable()
class SearchResultItem {
  @JsonKey(name: 'full_name')
  final String fullName;

  @JsonKey(name: 'html_url')
  final String htmlUrl;

  final GitHubOwner owner;

  const SearchResultItem({
    required this.fullName,
    required this.htmlUrl,
    required this.owner,
  });

  factory SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultItemToJson(this);

// static SearchResultItem fromJson(dynamic json) {
//   return SearchResultItem(
//     fullName: json['full_name'] as String,
//     htmlUrl: json['html_url'] as String,
//     owner: GitHubOwner.fromJson(json['owner']),
//   );
// }
}
