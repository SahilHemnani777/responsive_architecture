import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';

import 'info_widget_mobile.dart';
import 'info_widget_tablet.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: InfoWidgetMobilePortrait(name: "Sahil Hemnani", occupation: "Flutter Dev",),
        landscape: InfoWidgetMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: InfoWidgetTabletPortrait(firstName: "Sahil",),
        landscape: InfoWidgetTabletLandscape(name: "Sahil Hemnani", occupation: "Flutter Dev",),
      ),
    );
  }
}

