import 'package:flutter/material.dart';

Color hexToInt(String hexString) {
  // ignore: unnecessary_null_comparison
  if (hexString == '' || hexString == 'null' || hexString == null) hexString = '#FFFFFF';
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

class AppColors {
  static Color white = hexToInt('#FFFFFF');
  static Color eclipse = hexToInt('#383838');
  static Color graniteGray = hexToInt('#676767');
  static Color gray85 = hexToInt('#F4F4F4');
  static Color gray81 = hexToInt('#CFCFCF');
  static Color cylindrical = hexToInt("#8B0000");
  static Color azureRadiance = hexToInt("#0376FD");
  static Color paleGreen = hexToInt('#98fb98');
  static Color paleBlue = hexToInt('#ADD8E6');
  static Color red = hexToInt('#FF0000');
  static Color black = hexToInt('#000000');
  static Color darkred = hexToInt("#8B0000");
}
