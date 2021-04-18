/*Class will contain the basic sizing information of a widget*/

import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.orientation,
      this.deviceType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return "Orientation: $orientation\n"
        "Device Type: $deviceType\n"
        "Screen Size: $screenSize\n"
        "Local Widget Size: $localWidgetSize";
  }
}
