import 'package:equatable/equatable.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/models/models.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchStateEmpty extends SearchState {
  const SearchStateEmpty();
}

class SearchStateLoading extends SearchState {
  const SearchStateLoading();
}

class SearchStateSuccess extends SearchState {
  final List<SearchResultItem> items;

  const SearchStateSuccess(this.items);

  @override
  List<Object> get props => [items];

  @override
  String toString() => 'SearchStateSuccess::items.length=${items.length}';
}

class SearchStateError extends SearchState {
  final String error;

  const SearchStateError({String? error})
      : this.error = error ?? Constants.empty;
  
  @override
  List<Object> get props => [error];
}
