import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_list_view.dart';
import 'package:bookapp/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(top: 30, left: 24),
          child: const Text('Best Seller', style: Styles.titlemedium),
        ),
      ],
    );
  }
}
