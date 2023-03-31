import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrgap/backend/utils/util.theme.dart';

Widget get backButton => Row(
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Row(
              children: [Icon(Icons.chevron_left), Text("Back")],
            )),
        vDivider
      ],
    );
