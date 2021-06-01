class SearchResultError {
  final String message;

  const SearchResultError({required this.message});

  static SearchResultError fromJson(dynamic json) {
    return SearchResultError(
      message: json['message'] as String,
    );
  }
}
