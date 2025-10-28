// // import 'package:flutter/material.dart';
// // import 'app_theme.dart';

// // enum AppThemeMode { light, dark, custom }

// // class ThemeProvider with ChangeNotifier {
// //   ThemeData _themeData = lightTheme;
// //   AppThemeMode _themeMode = AppThemeMode.light;

// //   ThemeData get themeData => _themeData;
// //   AppThemeMode get themeMode => _themeMode;

// //   void switchTheme(AppThemeMode mode) {
// //     switch (mode) {
// //       case AppThemeMode.light:
// //         _themeData = lightTheme;
// //         break;
// //       case AppThemeMode.dark:
// //         _themeData = darkTheme;
// //         break;
// //       case AppThemeMode.custom:
// //         _themeData = customTheme;
// //         break;
// //     }
// //     _themeMode = mode;
// //     notifyListeners();
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'app_theme.dart';

// // class ThemeProvider extends ChangeNotifier {
// //   ThemeMode themeMode = ThemeMode.system;

// //   void toggleTheme(bool isDark) {
// //     themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
// //     notifyListeners();
// //   }

// //   void setThemeMode(ThemeMode mode) {
// //     themeMode = mode;
// //     notifyListeners();
// //   }

// //   ThemeData get lightTheme => AppTheme.lightTheme;
// //   ThemeData get darkTheme => AppTheme.darkTheme;
// // }

// // todo

// // import 'package:flutter/material.dart';
// // import 'app_theme.dart';

// // enum CustomThemeMode { light, dark, custom }

// // class ThemeProvider extends ChangeNotifier {
// //   CustomThemeMode currentTheme = CustomThemeMode.light;

// //   void setCustomTheme(CustomThemeMode mode) {
// //     currentTheme = mode;
// //     notifyListeners();
// //   }

// //   ThemeData get theme {
// //     switch (currentTheme) {
// //       case CustomThemeMode.dark:
// //         return AppTheme.darkTheme;
// //       case CustomThemeMode.custom:
// //         return AppTheme.customTheme;
// //       default:
// //         return AppTheme.lightTheme;
// //     }
// //   }
// // }

// import 'package:app_maps/core/theme/app_theme.dart';
// import 'package:flutter/material.dart';

// class ThemeProvider extends ChangeNotifier {
//   ThemeData _themeData = AppThemes.lightTheme;
//   ThemeData get themeData => _themeData;

//   void setLightTheme() {
//     _themeData = AppThemes.lightTheme;
//     notifyListeners();
//   }

//   void setDarkTheme() {
//     _themeData = AppThemes.darkTheme;
//     notifyListeners();
//   }

//   void setCustomTheme() {
//     _themeData = AppThemes.customTheme;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'app_theme.dart';

/// Enum to represent which theme is currently active
enum AppThemeMode { light, dark, custom }

class ThemeProvider extends ChangeNotifier {
  /// Current theme data used by MaterialApp
  ThemeData _themeData = AppThemes.lightTheme;

  /// The currently selected theme mode
  AppThemeMode _themeMode = AppThemeMode.light;

  /// Getter for the active theme
  ThemeData get themeData => _themeData;

  /// Getter for current mode (optional if you want UI indicators)
  AppThemeMode get themeMode => _themeMode;

  /// Switch between themes
  void switchTheme(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        _themeData = AppThemes.lightTheme;
        break;
      case AppThemeMode.dark:
        _themeData = AppThemes.darkTheme;
        break;
      case AppThemeMode.custom:
        _themeData = AppThemes.customTheme;
        break;
    }
    _themeMode = mode;
    notifyListeners();
  }

  /// Optional: Quick methods for direct switching
  void setLightTheme() => switchTheme(AppThemeMode.light);
  void setDarkTheme() => switchTheme(AppThemeMode.dark);
  void setCustomTheme() => switchTheme(AppThemeMode.custom);
}
