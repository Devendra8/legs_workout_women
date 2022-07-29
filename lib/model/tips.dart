import 'package:flutter/cupertino.dart';

class tips0 {
  final String title;
  final String paragraph;

  tips0({
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

class tips2 {
  final String title;
  final String paragraph;
  final String image;

  tips2({
    required this.title,
    required this.paragraph,
    required this.image,
  });
}

class tips {
  final String title;
  final Color titleColor;
  final String image;
  final Color color;
  final List<tips2> tipsClass;
  // final Widget page;

  tips({
    required this.title,
    required this.titleColor,
    required this.image,
    required this.color,
    required this.tipsClass,
    // required this.page,
  });
}
