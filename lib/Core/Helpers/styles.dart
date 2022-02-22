import 'package:flutter/material.dart';

abstract class Styles
{

  static const TextStyle txtTitle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle txtSubTitle = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static const Color divider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

}