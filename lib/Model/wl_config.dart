// wl_config.dart
class WLConfig {
  final String id;
  final String name;
  final String iconName; // iOS alternate icon
  final String? logoAsset;

  const WLConfig({
    required this.id,
    required this.name,
    required this.iconName,
    this.logoAsset,
  });
}

final List<WLConfig> wlList = [
  const WLConfig(id: "default", name: "Default WL", iconName: ""),
  const WLConfig(id: "wl1", name: "Client A", iconName: "WL1Icon"),
  const WLConfig(id: "wl2", name: "Client B", iconName: "WL2Icon"),
];