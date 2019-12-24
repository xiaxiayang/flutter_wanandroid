import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemExtent: 50,
              itemBuilder:(BuildContext context,int index){
                return renderItem(context,index);
              },
            ))
      ],
    );
  }

  Widget renderItem(BuildContext context,int index){

    return Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
      child:  Flex(direction: Axis.vertical,
          children: <Widget>[
            Flex(direction: Axis.horizontal,
              children: <Widget>[
                Text("类别")
              ],)

          ]));

  }
}
