import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsViewBody(bookModel: bookModel)),
    );
  }
}
