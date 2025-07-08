import 'package:bookapp/contant.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/features/splashview/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
