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
          child: const Text('Best Seller', style: Styles.textstyle18),
        ),
        BestSellerItem(),
      ],
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.2 / 3.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
