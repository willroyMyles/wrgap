import 'package:flutter/material.dart';
import 'package:wrgap/backend/extensions/extension.materialStateProperty.dart';
import 'package:wrgap/backend/utils/util.theme.dart';

extension Btn on TextButton {
  get primary => TextButton(
        onPressed: onPressed,
        style: _primary,
        child: child ?? Container(),
      );
  get primaryFloat => TextButton(
        onPressed: onPressed,
        style: _primaryFloat,
        child: child ?? Container(),
      );
}

ButtonStyle get _primary => ButtonStyle(
      backgroundColor: mst(toc.cardColor),
      foregroundColor: mst(toc.primaryColor),
      shape:
          mst(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
    );

ButtonStyle get _primaryFloat => ButtonStyle(
      backgroundColor: mst(toc.cardColor),
      foregroundColor: mst(toc.primaryColor),
      elevation: mst(10),
      shape:
          mst(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
    );
