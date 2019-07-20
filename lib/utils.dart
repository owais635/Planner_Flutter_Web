import 'package:flutter_web/material.dart';

// No native way to use hex colours.
// https://stackoverflow.com/a/53905427
convertHexColour(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}
