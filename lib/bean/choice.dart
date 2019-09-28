import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice{
  const Choice({this.icon,this.title});
  final IconData icon;
  final String title;
}

const List<Choice> choices = <Choice>[
  const Choice(title: 'Car',icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk)
];