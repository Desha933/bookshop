import 'package:bookapp/core/shared_widgets/custom_loading_indicator.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategryItem extends StatelessWidget {
  const CategryItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kBookDetailsViewPath, extra: bookModel);
      },
      child: AspectRatio(
        aspectRatio: 2.2 / 3.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => const CustomLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
