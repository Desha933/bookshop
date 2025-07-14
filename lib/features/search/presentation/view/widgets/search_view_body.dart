import 'package:bookapp/contant.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookapp/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                SizedBox(height: 16),
                Text('Result', style: Styles.textstyle18),
                Expanded(child: SizedBox(height: 16)),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .85,
                  child: SearchResultListView(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
