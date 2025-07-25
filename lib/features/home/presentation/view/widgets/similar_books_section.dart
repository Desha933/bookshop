import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like ',
          style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        SimilarBooksListView(bookModel: bookModel),
      ],
    );
  }
}
