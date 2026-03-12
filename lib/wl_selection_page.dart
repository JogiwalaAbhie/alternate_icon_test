// wl_selection_page.dart
import 'package:flutter/material.dart';
import 'Model/wl_config.dart';
import 'Service/app_icon_manager.dart';
import 'main_app_page.dart';

class WLSelectionPage extends StatelessWidget {
  const WLSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Your WL")),
      body: ListView.builder(
        itemCount: wlList.length,
        itemBuilder: (context, index) {
          final wl = wlList[index];
          return ListTile(
            leading: Image.asset(wl.logoAsset, width: 40),
            title: Text(wl.name),
            onTap: () async {
              // Change Home screen icon (iOS)
              if (wl.iconName.isNotEmpty) {
                await AppIconManager.setAlternateIcon(wl.iconName);
              }

              // Navigate to main app page with selected WL
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) => MainAppPage(selectedWL: wl)));
            },
          );
        },
      ),
    );
  }
}