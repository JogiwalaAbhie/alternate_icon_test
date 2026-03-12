// main_app_page.dart
import 'package:flutter/material.dart';
import 'Model/wl_config.dart';

class MainAppPage extends StatelessWidget {
  final WLConfig selectedWL;
  const MainAppPage({super.key, required this.selectedWL});

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
              Image.asset(selectedWL.logoAsset, width: 100),
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