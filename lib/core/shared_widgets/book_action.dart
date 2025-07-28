import 'package:bookapp/core/functions/get_launch_url.dart';
import 'package:bookapp/core/shared_widgets/custom_buttom.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButtom(
          backgroundcolor: Colors.white,
          textcolor: Colors.black,
          text: '99.99',
          border: BorderRadius.horizontal(left: Radius.circular(12)),
        ),
        CustomButtom(
          onPressed: () async {
            await getlaunchuri(context, bookModel);
          },
          backgroundcolor: Colors.orange,
          textcolor: Colors.white,
          text: 'Free Preview',
          fontsize: 16,
          border: BorderRadius.horizontal(right: Radius.circular(12)),
        ),
      ],
    );
  }
}
