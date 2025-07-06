import 'package:bookapp/features/home/presentation/view/widgets/categry_item.dart';
import 'package:flutter/material.dart';

class CategryListView extends StatelessWidget {
  const CategryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: const CategryItem(),
          );
        },
      ),
    );
  }
}
