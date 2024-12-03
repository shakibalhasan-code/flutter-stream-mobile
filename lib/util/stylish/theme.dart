// import 'package:flutter/material.dart';
//
// const Color primaryColor = Color(0xFFF50057);
// const Color secondaryColor = Color(0xFF1E1E1E);
// const Color secondaryColorLight = Color.fromARGB(255, 117, 116, 116);
//
// ThemeData themeData() {
//   return ThemeData(
//       primaryColor: primaryColor,
//       textTheme: TextTheme(
//           titleSmall: GoogleFonts.notoSans(fontSize: 12, color: primaryColor),
//           titleMedium: GoogleFonts.notoSans(
//               fontSize: 14, color: primaryColor, fontWeight: FontWeight.bold),
//           titleLarge: GoogleFonts.notoSans(
//               fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold)),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(primaryColor),
//         elevation: MaterialStatePropertyAll(0),
//         foregroundColor: MaterialStateProperty.all(Colors.white),
//         textStyle: MaterialStateProperty.all(
//             GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
//         overlayColor: MaterialStateProperty.all(
//             Colors.white.withOpacity(0.1)), // White splash color with opacity
//         shape: MaterialStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius:
//                 BorderRadius.circular(10), // Rounded corners with 10 radius
//           ),
//         ),
//       )),
//       inputDecorationTheme: InputDecorationTheme(
//         filled: true,
//         fillColor: Colors.grey[200], // Background color for input field
//         contentPadding:
//             const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: BorderSide.none, // No visible border
//         ),
//         // enabledBorder: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(10.0),
//         //   borderSide: const BorderSide(color: primaryColor, width: 1.0),
//         // ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: const BorderSide(color: Colors.blue, width: 2.0),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: const BorderSide(color: Colors.red, width: 1.0),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: const BorderSide(color: Colors.red, width: 2.0),
//         ),
//         labelStyle:
//             const TextStyle(color: Colors.grey), // Label color when unfocused
//         hintStyle: const TextStyle(color: Colors.grey), // Hint text style
//       ));
// }
