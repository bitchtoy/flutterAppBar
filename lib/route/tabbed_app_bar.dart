import 'package:demo/bean/choice.dart';
import 'package:flutter/material.dart';
import 'choice_card.dart';
class TabbedAppBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabbedAppBarState();
  }
}
class TabbedAppBarState extends State<TabbedAppBar>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabbedAppBar'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice){
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(children: choices.map((Choice choice){
            return ChoiceCard(choice: choice,);
          }).toList()),
        )
    );
  }
}