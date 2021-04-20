import 'package:flutter/material.dart';
class InfoWidgetMobilePortrait extends StatelessWidget {
  final String name;
  final String occupation;


  InfoWidgetMobilePortrait({this.name, this.occupation});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(10),
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(child: Icon(Icons.person,size: 50, color: Colors.black,), radius: 30,backgroundColor: Colors.transparent,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 21),),
              Text(occupation,style: TextStyle(fontSize: 10))
            ],
          )
        ],
      ),
    );
  }
}

class InfoWidgetMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child: Icon(Icons.person,size: 40, color: Colors.black,), radius: 30,backgroundColor: Colors.transparent,);
  }
}

