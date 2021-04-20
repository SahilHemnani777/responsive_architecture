import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/info_bar/info_widget.dart';

import 'app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: AppDrawer.getDrawerOptions(),
          ),
          InfoWidget()
        ],
      ),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  const AppDrawerTabletLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child:
          Column(
            children: [
              Container(
                child: InfoWidget(),
              ),
              SizedBox(height: 50),
              Column(
                children: AppDrawer.getDrawerOptions(),
              ),
            ],
          ),
    );
  }
}
