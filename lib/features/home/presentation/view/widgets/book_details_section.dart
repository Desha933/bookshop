import 'package:bookapp/core/shared_widgets/book_action.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CategryItem(bookModel: bookmodel),
        ),
        const SizedBox(height: 30),
        Text(
          '${bookmodel.volumeInfo?.title}',
          style: Styles.textstyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          '${bookmodel.volumeInfo?.authors?[0]}' ?? '',
          style: Styles.textstyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 18),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          bookModel: bookmodel,
        ),
        const SizedBox(height: 18),
        BookActions(bookModel: bookmodel),
      ],
    );
  }
}
