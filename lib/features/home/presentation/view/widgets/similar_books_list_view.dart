import 'package:bookapp/core/shared_widgets/custom_error_widget.dart';
import 'package:bookapp/core/shared_widgets/custom_loading_indicator.dart';
import 'package:bookapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .15,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: const CategryItem(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
