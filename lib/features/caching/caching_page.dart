import 'package:flutter/material.dart';

class CachingPage extends StatefulWidget {
  const CachingPage({super.key});

  @override
  State<CachingPage> createState() => _CachingPageState();
}

class _CachingPageState extends State<CachingPage> {
  String? _cachedData;

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network
    setState(() => _cachedData = "🌸 Cached data loaded successfully!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _cachedData == null
            ? ElevatedButton(
                onPressed: _loadData,
                child: const Text("Load & Cache Data"),
              )
            : Text(_cachedData!, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
