import '../../../../core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildViewsDetailsAndCountOfSessons extends StatelessWidget {
  const BuildViewsDetailsAndCountOfSessons({
    super.key,
    required this.iconPath,
    required this.text,
  });

  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(width: 6),
        CustomText(text: text, fontSize: 13, fontWeight: FontWeight.w400),
      ],
    );
  }
}
