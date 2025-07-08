import 'package:bookapp/contant.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookapp/features/home/presentation/view/widgets/categry_list_view.dart';
import 'package:bookapp/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBar()),
        const SliverToBoxAdapter(child: CategryListView()),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: kPadding,
              left: kPadding,
              bottom: kPadding,
            ),
            child: Text('Best Seller', style: Styles.textstyle18),
          ),
        ),
        const SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
