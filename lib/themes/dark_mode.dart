// import 'package:flutter/material.dart';

// ThemeData darkMode = ThemeData(
//   colorScheme: ColorScheme.dark(
//     background: const Color.fromARGB(255, 20, 20, 20),
//     primary: const Color.fromARGB(255, 122, 122, 122),
//     secondary: const Color.fromARGB(255, 30, 30, 30),
//     tertiary: const Color.fromARGB(255, 47, 47, 47),
//     inversePrimary: Colors.grey.shade700,
//   )
// );
import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.black,                // Background color
    primary: Colors.yellow.shade700,         // Primary color (yellow)
    secondary: Colors.yellow.shade900,       // Secondary color (darker yellow)
    surface: Colors.yellow.shade500,         // Surface color (lighter yellow)
    onBackground: Colors.white,              // Text color on background (white)
    onPrimary: Colors.black,                 // Text color on primary (black)
    onSecondary: Colors.black,               // Text color on secondary (black)
    onSurface: Colors.white,                 // Text color on surface (white)
  )
);


