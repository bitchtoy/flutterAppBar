import 'package:flutter/material.dart';
import 'route/basic_app_bar.dart';
import 'route/app_bar_bottom_sample.dart';
import 'route/tabbed_app_bar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MaterialAppBar Demo',
      routes: {
        'BasicAppBar' :(context)=>BasicAppBar(),
        'AppBarBottomSample' : (context)=>AppBarBottomSample(),
        'TabbedAppBar' : (context)=>TabbedAppBar()
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch:Colors.blue ,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBarSample'),
        ),
        body: MyPage(),
      ),
    );
  }
}
class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyPageState();
  }
}
class MyPageState extends State<MyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
            return BasicAppBar();
          }));},child: Text('BasicAppBar')),
          RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
            return AppBarBottomSample();
          }));},child: Text('AppBarBottomSample')),
          RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
            return TabbedAppBar();
          }));},child: Text('TabbedAppBar'))
        ],
      ),
    );
  }
}