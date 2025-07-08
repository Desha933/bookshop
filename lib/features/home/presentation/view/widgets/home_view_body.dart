import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_list_view.dart';
import 'package:bookapp/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const CategryListView(),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
          child: const Text('Best Seller', style: Styles.textstyle18),
        ),
        const BestSellerItem(),
      ],
    );
  }
}
