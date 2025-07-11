import 'package:bookapp/core/shared_widgets/book_action.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CategryItem(),
        ),
        const Text('The Jungle Book', style: Styles.textstyle30),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textstyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 18),
        const BookActions(),
      ],
    );
  }
}
