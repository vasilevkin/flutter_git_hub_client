import 'package:flutter_git_hub_client/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  final List<SearchResultItem> items;

  const SearchResult({required this.items});

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);

// static SearchResult fromJson(Map<String, dynamic> json) {
//   final items = (json['items'] as List<dynamic>)
//       .map((dynamic item) =>
//           SearchResultItem.fromJson(item as Map<String, dynamic>))
//       .toList();
//
//   return SearchResult(items: items);
// }
}
