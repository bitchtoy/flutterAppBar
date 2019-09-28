import 'package:flutter/material.dart';
import 'package:demo/bean/choice.dart';
class ChoiceCard extends StatelessWidget{
  ChoiceCard({Key key,this.choice}):super(key:key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(choice.icon,color: textStyle.color,size: 123,),
              Text(choice.title,style: textStyle,)
            ],
          ),
        ),
      ),

    );
  }
}