import 'package:flutter/material.dart';

void CustomErrorSnakBar(context, Uri url) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text('can not lanuch $url')));
}
