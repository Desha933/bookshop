import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundcolor,
    required this.textcolor,
    this.border,
    required this.text,
    this.fontsize,
  });
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? border;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            //  foregroundColor: Colors.white,
            backgroundColor: backgroundcolor,

            // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius:
                  border ?? BorderRadius.horizontal(right: Radius.circular(12)),
            ),
          ),
          child: Text(
            text,
            style: Styles.textstyle18.copyWith(
              color: textcolor,
              fontSize: fontsize,
            ),
          ),
        ),
      ),
    );
  }
}
