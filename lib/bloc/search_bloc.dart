import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/bloc/bloc.dart';
import 'package:flutter_git_hub_client/data/repository.dart';
import 'package:flutter_git_hub_client/models/models.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GitHubRepository gitHubRepository;

  SearchBloc({required this.gitHubRepository}) : super(SearchStateEmpty());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is TextChanged) {
      final searchText = event.text;
      if (searchText.isEmpty) {
        yield SearchStateEmpty();
      } else {
        yield SearchStateLoading();
        try {
          final results = await gitHubRepository.search(searchText);
          yield SearchStateSuccess(results.items);
        } catch (error) {
          yield error is SearchResultError
              ? SearchStateError(error.message)
              : SearchStateError(Constants.unexpectedError);
        }
      }
    }
  }
}