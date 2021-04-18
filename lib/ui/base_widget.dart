import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

/*t will take in a Function that returns a widget, that function will be named builder.
The parameters to the function will be the BuildContext and the SizingInformation.
For the build method we will execute that builder and return the widget it produces.*/


class BaseWidget extends StatelessWidget {

  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxConstraints){
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );
      return builder(context, sizingInformation);
    },);
  }

  BaseWidget({this.builder});
}
