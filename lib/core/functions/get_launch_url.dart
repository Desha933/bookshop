import 'package:bookapp/core/functions/error_snak_bar.dart';
import 'package:bookapp/features/home/data/models/book_model/book_model.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> getlaunchuri(context, BookModel bookmodel) async {
  final Uri url = Uri.parse(bookmodel.volumeInfo!.previewLink!);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    CustomErrorSnakBar(context, url);
  }
}
