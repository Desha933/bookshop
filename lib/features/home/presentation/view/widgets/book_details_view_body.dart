import 'package:bookapp/contant.dart';
import 'package:bookapp/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookapp/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookapp/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              children: const [
                CustomBookDetailsAppBar(),

                SizedBox(height: 45),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
