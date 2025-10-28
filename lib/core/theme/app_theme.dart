// // import 'package:flex_color_scheme/flex_color_scheme.dart';
// // import 'package:flutter/material.dart';

// // /// ✅ Light Theme
// // final ThemeData lightTheme = FlexThemeData.light(
// //   colorScheme: FlexColorScheme.light(scheme: FlexScheme.mandyRed).colorScheme,
// //   useMaterial3: true,

// //   fontFamily: 'Poppins',
// // );

// // /// ✅ Dark Theme
// // final ThemeData darkTheme = FlexThemeData.dark(
// //   colorScheme: FlexColorScheme.dark(scheme: FlexScheme.mandyRed).colorScheme,
// //   useMaterial3: true,
// //   fontFamily: 'Poppins',
// // );

// // /// ✅ Custom Purple–Yellow Theme
// // final ThemeData customTheme = ThemeData(
// //   useMaterial3: true,
// //   colorScheme: const ColorScheme(
// //     brightness: Brightness.light,
// //     primary: Color(0xFF6A1B9A), // Purple
// //     onPrimary: Colors.white,
// //     secondary: Color(0xFFFFD600), // Yellow
// //     onSecondary: Colors.black,
// //     error: Colors.redAccent,
// //     onError: Colors.white,

// //     background: Color(0xFFF9F9FB),
// //     onBackground: Colors.black87,
// //     surface: Colors.white,
// //     onSurface: Colors.black87,
// //   ),
// //   appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
// //   textTheme: const TextTheme(
// //     bodyMedium: TextStyle(color: Colors.black87),
// //     titleLarge: TextStyle(fontWeight: FontWeight.bold),
// //   ),
// // );

// import 'package:flutter/material.dart';
// import 'package:flex_color_scheme/flex_color_scheme.dart';

// /// 🎨 Light Theme
// final ThemeData lightTheme = FlexThemeData.light(
//   useMaterial3: true,
//   colorScheme: const ColorScheme.light(
//     primary: Color(0xFF6200EE),
//     secondary: Color(0xFF03DAC6),
//     background: Colors.white,
//     surface: Colors.white,
//     onPrimary: Colors.white,
//     onSecondary: Colors.black,
//     onBackground: Colors.black,
//     onSurface: Colors.black,
//   ),
//   fontFamily: 'Poppins',
// );

// /// 🌚 Dark Theme
// final ThemeData darkTheme = FlexThemeData.dark(
//   useMaterial3: true,
//   colorScheme: const ColorScheme.dark(
//     primary: Color(0xFFBB86FC),
//     secondary: Color(0xFF03DAC6),
//     background: Color(0xFF121212),
//     surface: Color(0xFF1E1E1E),
//     onPrimary: Colors.black,
//     onSecondary: Colors.black,
//     onBackground: Colors.white,
//     onSurface: Colors.white,
//   ),
//   fontFamily: 'Poppins',
// );

// /// 💜💛 Custom Purple–Yellow Theme
// final ThemeData customTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: const ColorScheme(
//     brightness: Brightness.light,
//     primary: Color(0xFF6A1B9A), // Purple
//     onPrimary: Colors.white,
//     secondary: Color(0xFFFFD600), // Yellow
//     onSecondary: Colors.black,
//     error: Colors.redAccent,
//     onError: Colors.white,
//     background: Color(0xFFF8F6FF),
//     onBackground: Colors.black,
//     surface: Color(0xFFFFF9E5),
//     onSurface: Colors.black87,
//   ),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Color(0xFF6A1B9A),
//     foregroundColor: Colors.white,
//     centerTitle: true,
//     elevation: 0,
//   ),
//   floatingActionButtonTheme: const FloatingActionButtonThemeData(
//     backgroundColor: Color(0xFFFFD600),
//     foregroundColor: Colors.black,
//   ),
//   textTheme: const TextTheme(
//     titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//     bodyMedium: TextStyle(fontSize: 16),
//   ),
//   fontFamily: 'Poppins',
// );

// // todo

// import 'package:flutter/material.dart';
// import 'app_colors.dart';

// class AppTheme {
//   // 🌤 Light Theme
//   static final lightTheme = ThemeData(
//     brightness: Brightness.light,
//     useMaterial3: true,
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.salmonPink,
//       secondary: AppColors.celadon,
//       background: AppColors.beige,
//       surface: Colors.white,
//       onPrimary: Colors.white,
//       onBackground: AppColors.wenge,
//     ),
//     scaffoldBackgroundColor: AppColors.beige,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.salmonPink,
//       foregroundColor: Colors.white,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         color: AppColors.wenge,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: AppColors.wenge),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.salmonPink,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       ),
//     ),
//   );

//   // 🌙 Dark Theme
//   static final darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     useMaterial3: true,
//     colorScheme: const ColorScheme.dark(
//       primary: AppColors.celadon,
//       secondary: AppColors.lightOrange,
//       background: AppColors.wenge,
//       surface: AppColors.wenge,
//       onPrimary: Colors.black,
//       onBackground: Colors.white,
//     ),
//     scaffoldBackgroundColor: AppColors.wenge,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.wenge,
//       foregroundColor: AppColors.celadon,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         color: AppColors.celadon,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: Colors.white70),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.celadon,
//         foregroundColor: Colors.black,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       ),
//     ),
//   );
// }
// todo _______

// import 'package:flutter/material.dart';
// import 'app_colors.dart';

// class AppTheme {
//   // 🌤 Light Theme
//   static final lightTheme = ThemeData(
//     brightness: Brightness.light,
//     useMaterial3: true,
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.salmonPink,
//       secondary: AppColors.celadon,
//       background: AppColors.beige,
//       surface: Colors.white,
//       onPrimary: Colors.white,
//       onBackground: AppColors.wenge,
//     ),
//     scaffoldBackgroundColor: AppColors.beige,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.salmonPink,
//       foregroundColor: Colors.white,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         color: AppColors.wenge,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: AppColors.wenge),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.salmonPink,
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//       ),
//     ),
//   );

//   // 🌙 Dark Theme
//   static final darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     useMaterial3: true,
//     colorScheme: const ColorScheme.dark(
//       primary: AppColors.celadon,
//       secondary: AppColors.lightOrange,
//       background: AppColors.wenge,
//       surface: AppColors.wenge,
//       onPrimary: Colors.black,
//       onBackground: Colors.white,
//     ),
//     scaffoldBackgroundColor: AppColors.wenge,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.wenge,
//       foregroundColor: AppColors.celadon,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         color: AppColors.celadon,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: Colors.white70),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.celadon,
//         foregroundColor: Colors.black,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//       ),
//     ),
//   );

//   // 🌸 Custom Theme (pastel & feminine)
//   static final customTheme = ThemeData(
//     brightness: Brightness.light,
//     useMaterial3: true,
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.celadon,
//       secondary: AppColors.salmonPink,
//       background: AppColors.lightOrange,
//       surface: Colors.white,
//       onPrimary: AppColors.wenge,
//       onBackground: AppColors.wenge,
//     ),
//     scaffoldBackgroundColor: AppColors.lightOrange,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.celadon,
//       foregroundColor: AppColors.wenge,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     textTheme: const TextTheme(
//       headlineMedium: TextStyle(
//         color: AppColors.wenge,
//         fontWeight: FontWeight.bold,
//       ),
//       bodyMedium: TextStyle(color: AppColors.wenge),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: AppColors.celadon,
//         foregroundColor: AppColors.wenge,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      secondary: AppColors.terracotta,
      background: AppColors.lightBackground,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.lightText),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.sage,
      foregroundColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.sage,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      secondary: AppColors.caramel,
      background: AppColors.darkBackground,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.darkText),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.deepCoffee,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.terracotta,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );

  static final customTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.customPrimary,
      secondary: AppColors.butter,
      background: AppColors.customBackground,
    ),
    scaffoldBackgroundColor: AppColors.customBackground,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: AppColors.customText),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.terracotta,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.terracotta,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
