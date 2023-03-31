import 'package:flutter/material.dart';

MaterialStateProperty<T> mst<T>(T value) {
  return MaterialStateProperty.all(value);
}
