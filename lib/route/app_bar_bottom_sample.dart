import 'package:flutter/material.dart';
import 'package:demo/bean/choice.dart';
import 'choice_card.dart';
class AppBarBottomSample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppBarBottomSampleState();
  }
}

class AppBarBottomSampleState extends State<AppBarBottomSample> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: choices.length, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  void _nextPage(int position){
    int _index = _tabController.index + position;
    setState(() {
      if(_index<0 || _index>=_tabController.length)return;
      _tabController.animateTo(_index);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarBottomSample'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){_nextPage(-1);}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){_nextPage(1);})
        ],
        bottom: PreferredSize(
            child: Theme(data: Theme.of(context).copyWith(accentColor: Colors.white),
                child: Container(
                  height: 48.0,
                  alignment: Alignment.center,
                  child: TabPageSelector(controller: _tabController,),
                )),
            preferredSize: const Size.fromHeight(48.0)),
      ),
      body: TabBarView(controller: _tabController,children: choices.map((Choice choice){
        return ChoiceCard(choice: choice,);
      }).toList(),),
    );
  }
}
