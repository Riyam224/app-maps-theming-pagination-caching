import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/theme/theme_provider.dart';
import 'presentation/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // 🔒 App Icon
              Icon(Icons.lock_outline, size: 100, color: color),
              const SizedBox(height: 20),

              // 🌸 App Title
              Text(
                "Welcome to Auth App",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // ✨ Subtitle
              Text(
                "Securely login or create an account to continue",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
              ),

              const Spacer(),

              // 🎨 Theme Toggle Section
              Text(
                "Choose Theme",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              ToggleButtons(
                borderRadius: BorderRadius.circular(12),
                borderColor: color,
                selectedBorderColor: color,
                fillColor: color.withOpacity(0.2),
                selectedColor: color,
                isSelected: [
                  themeProvider.themeData.brightness == Brightness.light &&
                      themeProvider.themeData !=
                          ThemeProvider().themeData, // Light
                  themeProvider.themeData.brightness == Brightness.dark, // Dark
                  themeProvider.themeData.colorScheme.primary ==
                      const Color(0xFFB36B5A), // Custom (terracotta)
                ],
                onPressed: (index) {
                  switch (index) {
                    case 0:
                      themeProvider.setLightTheme();
                      break;
                    case 1:
                      themeProvider.setDarkTheme();
                      break;
                    case 2:
                      themeProvider.setCustomTheme();
                      break;
                  }
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Light"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Dark"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Custom"),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 🔐 Buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                ),
                child: const Text("Login"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
