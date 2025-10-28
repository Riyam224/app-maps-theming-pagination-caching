import 'package:app_maps/core/theme/theme_provider.dart';
import 'package:app_maps/features/auth/welcome_page.dart';
import 'package:app_maps/features/maps/screen/google_maps_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const GoogleMapsApp(),
    ),
  );
}

class GoogleMapsApp extends StatelessWidget {
  const GoogleMapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theming Demo',
      theme: themeProvider.themeData,
      home: const GoogleMapsPage(),
    );
  }
}
