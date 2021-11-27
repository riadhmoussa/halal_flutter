import 'package:flutter/material.dart';

TextStyle getCustomFont(Color color, double fontSize, String fontName) {
  return TextStyle(
    // set color of text
      color: color,
      // set the font family as defined in pubspec.yaml
      fontFamily: fontName,
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: fontSize);
}
