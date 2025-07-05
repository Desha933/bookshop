import 'package:bookapp/contant.dart';
import 'package:bookapp/features/splashview/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),

      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
