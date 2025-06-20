// import 'package:flutter/material.dart';

// class ResponsiveHelper {
//   static double scaleWidth(BuildContext context, double size) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return (screenWidth / 390.0) * size; // 390 is base width for design (e.g., iPhone 14)
//   }

//   static double scaleHeight(BuildContext context, double size) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     return (screenHeight / 844.0) * size; // 844 is base height
//   }

//   static double scaleText(BuildContext context, double size) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return (screenWidth / 390.0) * size;
//   }

//   static EdgeInsets scaledPadding(
//       BuildContext context, double left, double top, double right, double bottom) {
//     return EdgeInsets.fromLTRB(
//       scaleWidth(context, left),
//       scaleHeight(context, top),
//       scaleWidth(context, right),
//       scaleHeight(context, bottom),
//     );
//   }
// }

// Example usage in your screen:
// Padding(
//   padding: ResponsiveHelper.scaledPadding(context, 16, 10, 16, 10),
// )
// Text(
//   "Hello!",
//   style: TextStyle(fontSize: ResponsiveHelper.scaleText(context, 18)),
// )
