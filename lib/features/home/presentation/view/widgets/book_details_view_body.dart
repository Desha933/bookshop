import 'package:bookapp/contant.dart';
import 'package:bookapp/core/shared_widgets/book_action.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_item.dart';
import 'package:bookapp/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CategryItem(),
          ),
          const SizedBox(height: 45),
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
      ),
    );
  }
}
