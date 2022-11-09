import 'package:flutter_smart_watch_harmony_os/models/monitor_data.dart';

import '../helpers/enums.dart';

class WearEngineDevice {
  final String basicInfo;
  final String capability;
  final String name;
  final int productType;
  final String identify;
  final String uuid;
  final String model;
  final String reservedness;
  final String softwareVersion;
  final bool isConnected;
  final int p2pCapability;
  final int monitorCapability;
  final int notifyCapability;
  final String deviceCategory;

  late Future<DeviceCapabilityStatus> Function({int queryId})
      checkForDeviceCapability;
  late Future<int> Function() getAvailableStorageSize;
  late Future<MonitorData> Function({required MonitorItem monitorItem})
      queryMonitorItem;
  late Stream<Map<String, dynamic>> Function({required List<MonitorItem> items})
      monitorItemsChanged;

  WearEngineDevice(
      {required this.basicInfo,
      required this.capability,
      required this.name,
      required this.productType,
      required this.identify,
      required this.uuid,
      required this.model,
      required this.reservedness,
      required this.softwareVersion,
      required this.isConnected,
      required this.p2pCapability,
      required this.monitorCapability,
      required this.notifyCapability,
      required this.deviceCategory});

  factory WearEngineDevice.fromJson(Map<String, dynamic> json) {
    return WearEngineDevice(
        basicInfo: json["basicInfo"] as String? ?? "",
        capability: json["capability"] as String? ?? "",
        name: json["name"] as String? ?? "",
        productType: json["productType"] as int? ?? -1,
        identify: json["identify"] as String? ?? "",
        uuid: json["uuid"] as String? ?? "",
        model: json["model"] as String? ?? "",
        reservedness: json["reservedness"] as String? ?? "",
        softwareVersion: json["softwareVersion"] as String? ?? "",
        isConnected: json["isConnected"] as bool? ?? false,
        p2pCapability: json["p2pCapability"] as int? ?? -1,
        monitorCapability: json["monitorCapability"] as int? ?? -1,
        notifyCapability: json["notifyCapability"] as int? ?? -1,
        deviceCategory: json["deviceCategory"] as String? ?? "");
  }
}
