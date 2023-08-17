import 'package:flutter/material.dart';

class OutlinesModel {
  final String title;
  final String iconUrl;
  final Color color;

  OutlinesModel({
    required this.title,
    required this.iconUrl,
    this.color = Colors.white,
  });
}
