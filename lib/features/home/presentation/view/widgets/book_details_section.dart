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
          child: CategryItem(
            imageUrl:
                bookmodel.volumeInfo?.imageLinks?.thumbnail ??
                'https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png',
          ),
        ),
        const SizedBox(height: 30),
        Text(
          '${bookmodel.volumeInfo?.title}',
          style: Styles.textstyle30,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Text(
          '${bookmodel.volumeInfo?.authors?[0]}' ?? 'G.T.Rowling',
          style: Styles.textstyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 18),
        // const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 18),
        const BookActions(),
      ],
    );
  }
}
