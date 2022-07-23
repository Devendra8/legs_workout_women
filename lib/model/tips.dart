import 'package:flutter/cupertino.dart';

class tips {
  final String title;
  final String paragraph;

  tips({
    required this.title,
    required this.paragraph,
  });
}

class tips1 {
  final String id;
  final String title;
  final String paragraph;
  final Color color;
  final bool isFirst;
  final bool isLast;
  final String image;

  tips1({
    required this.id,
    required this.title,
    required this.paragraph,
    required this.color,
    required this.isFirst,
    required this.isLast,
    required this.image,
  });
}
