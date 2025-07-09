import 'package:bookapp/contant.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/assetsimages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding,
        vertical: kPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assetsimages.logo, color: kLogoColor),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchViewPath);
            },
            icon: const Icon(Icons.search, size: 30),
          ),
        ],
      ),
    );
  }
}
