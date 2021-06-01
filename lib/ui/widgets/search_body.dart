import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_git_hub_client/app/constants.dart';
import 'package:flutter_git_hub_client/bloc/bloc.dart';
import 'package:flutter_git_hub_client/ui/widgets/search_results.dart';

class SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      if (state is SearchStateLoading) {
        return const CircularProgressIndicator();
      }
      if (state is SearchStateError) {
        return Text(state.error);
      }
      if (state is SearchStateSuccess) {
        return state.items.isEmpty
            ? Text(Constants.noResults)
            : Expanded(
                child: SearchResults(
                  items: state.items,
                ),
              );
      }

      return Text(Constants.searchHint);
    });
  }
}
