// main_app_page.dart
import 'package:flutter/material.dart';
import 'Model/wl_config.dart';

class MainAppPage extends StatelessWidget {
  final WLConfig selectedWL;
  const MainAppPage({super.key, required this.selectedWL});

  Widget _buildLogo() {
    final assetPath = selectedWL.logoAsset;
    if (assetPath == null || assetPath.isEmpty) {
      return const FlutterLogo(size: 100);
    }
    return Image.asset(assetPath, width: 100);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: selectedWL.name,
      home: Scaffold(
        appBar: AppBar(title: Text(selectedWL.name)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              const SizedBox(height: 20),
              Text(
                "Welcome to ${selectedWL.name} App!",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}