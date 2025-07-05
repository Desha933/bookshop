import 'package:bookapp/contant.dart';
import 'package:bookapp/core/assetsimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(Assetsimages.logo, width: 200, color: kLogoColor),
        const Text('Book Shop', textAlign: TextAlign.center),
      ],
    );
  }
}
