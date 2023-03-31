import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData get toc => Theme.of(Get.context!);

extension TextColor on ThemeData {
  Color get textColor => textTheme.bodyLarge!.color!;
}

Widget get sizer => const SizedBox(width: 5, height: 5);
Widget get vDivider => const Opacity(
      opacity: .3,
      child: VerticalDivider(
        thickness: 2,
        indent: 5,
        endIndent: 5,
      ),
    );
