import 'package:flutter/material.dart';

class CategryItem extends StatelessWidget {
  const CategryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: AspectRatio(
        aspectRatio: 2.2 / 3.5,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/05/31/16/39/windows-2360920_1280.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
