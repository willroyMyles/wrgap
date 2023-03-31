import 'package:flutter/material.dart';

extension TextEx on Text {
  Widget get hint => Text(data!.toUpperCase(),
      textScaleFactor: .85,
      style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600));
}
