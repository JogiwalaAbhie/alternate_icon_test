// wl_config.dart
class WLConfig {
  final String id;
  final String name;
  final String iconName; // iOS alternate icon
  final String logoAsset;

  WLConfig({
    required this.id,
    required this.name,
    required this.iconName,
    required this.logoAsset,
  });
}

final List<WLConfig> wlList = [
  WLConfig(id: "default", name: "Default WL", iconName: "", logoAsset: "assets/logos/default_logo.png"),
  WLConfig(id: "wl1", name: "Client A", iconName: "WL1Icon", logoAsset: "assets/logos/wl1_logo.png"),
  WLConfig(id: "wl2", name: "Client B", iconName: "WL2Icon", logoAsset: "assets/logos/wl2_logo.png"),
];