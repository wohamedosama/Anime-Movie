import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLine,
  });
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      text,
      maxLines: maxLine ?? 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
