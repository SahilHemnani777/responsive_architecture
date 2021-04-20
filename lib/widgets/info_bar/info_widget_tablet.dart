import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoWidgetTabletPortrait extends StatelessWidget {
  final String firstName;


  InfoWidgetTabletPortrait({this.firstName});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.black,
              ),
              radius: 30,
              backgroundColor: Colors.transparent,
            ),
            Text(firstName)
          ],
        ));
  }
}

class InfoWidgetTabletLandscape extends StatelessWidget {
  final String name;
  final String occupation;

  InfoWidgetTabletLandscape({this.name, this.occupation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(10),
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.black,
            ),
            radius: 30,
            backgroundColor: Colors.transparent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 21),
              ),
              Text(occupation, style: TextStyle(fontSize: 10))
            ],
          )
        ],
      ),
    );
  }
}
