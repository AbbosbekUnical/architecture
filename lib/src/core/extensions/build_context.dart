import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get width => size.width;

  double get height => size.height;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
}
