import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Text(sizingInformation.toString()),
        ),
      );
    });
  }
}
