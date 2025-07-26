import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.bookModel,
  });
  final BookModel bookModel;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Color(0xffffdd4f)),
        const SizedBox(width: 6.3),
        Text(
          '${bookModel.volumeInfo?.maturityRating}' ?? '4.8',
          style: Styles.textstyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '(2544)',
          style: Styles.textstyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
