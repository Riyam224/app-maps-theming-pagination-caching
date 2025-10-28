import 'package:app_maps/core/theme/theme_provider.dart';
import 'package:app_maps/features/auth/presentation/pages/auth_page.dart';

import 'package:app_maps/features/caching/caching_page.dart';
import 'package:app_maps/features/maps/screen/google_maps_page.dart';
import 'package:app_maps/features/pagination/pagination_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    GoogleMapsPage(),
    PaginationPage(),
    CachingPage(),
    AuthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Multi-Feature App")),
      body: _pages[_currentIndex],

      // 🌈 Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurface.withOpacity(0.6),
        backgroundColor: colorScheme.surface,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Maps",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Pagination",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cached_outlined),
            label: "Caching",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outline),
            label: "Auth",
          ),
        ],
      ),

      // 🎨 Floating Theme Buttons
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _themeButton(
            context,
            color: Colors.white,
            icon: Icons.light_mode,
            onTap: () => themeProvider.switchTheme(AppThemeMode.light),
          ),
          const SizedBox(height: 10),
          _themeButton(
            context,
            color: Colors.black,
            icon: Icons.dark_mode,
            onTap: () => themeProvider.switchTheme(AppThemeMode.dark),
          ),
          const SizedBox(height: 10),
          _themeButton(
            context,
            color: Colors.purple,
            icon: Icons.color_lens,
            onTap: () => themeProvider.switchTheme(AppThemeMode.custom),
          ),
        ],
      ),
    );
  }

  Widget _themeButton(
    BuildContext context, {
    required Color color,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return FloatingActionButton.small(
      heroTag: icon.toString(),
      backgroundColor: color,
      onPressed: onTap,
      child: Icon(icon, color: Colors.white),
    );
  }
}

// // ignore_for_file: unused_local_variable

// import 'package:app_maps/core/theme/theme_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // todo
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     final color = Theme.of(context).colorScheme.primary;
//     return Scaffold(body: Center(child: Text('Home Screen')));
//   }
// }
