import 'package:demo/bean/choice.dart';
import 'package:flutter/material.dart';
import 'choice_card.dart';
class BasicAppBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BasicAppBarState();
  }
}
class BasicAppBarState extends State<BasicAppBar>{
  Choice _select = choices[0];
  void _selectChoice(Choice choice){
    setState(() {
      _select = choice;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BasicAppBar'),
        actions: <Widget>[
          IconButton(icon: Icon(choices[0].icon), onPressed: (){_selectChoice(choices[0]);}),
          IconButton(icon: Icon(choices[1].icon), onPressed: (){_selectChoice(choices[1]);}),
          PopupMenuButton(
              onSelected: _selectChoice,
              itemBuilder: (BuildContext context){
              return choices.skip(2).map((Choice choice){
                return PopupMenuItem(child: Text(choice.title),value: choice,);
              }).toList();
          })
        ],
      ),
      body: ChoiceCard(choice: _select,),
    );
  }
}
