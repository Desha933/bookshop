import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          const SizedBox(width: 20),
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
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .5,
                child: const Text(
                  'Harry Potter and the Goblet Of Fire ',
                  style: Styles.textstyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('G.T.Rowling', style: Styles.textstyle14),
              Row(
                children: [
                  Text(
                    r'99.99 $',
                    style: Styles.textstyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
