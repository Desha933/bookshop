import 'package:bookapp/core/shared_widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButtom(
          backgroundcolor: Colors.white,
          textcolor: Colors.black,
          text: '99.99',
          border: BorderRadius.horizontal(left: Radius.circular(12)),
        ),
        const CustomButtom(
          backgroundcolor: Colors.orange,
          textcolor: Colors.white,
          text: 'Free Preview',
          fontsize: 16,
          border: BorderRadius.horizontal(right: Radius.circular(12)),
        ),
      ],
    );
  }
}
