import 'package:flutter/material.dart';
import 'package:ejemplo_construccion/pages/calls.dart';
import 'package:ejemplo_construccion/pages/chats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.teal[700],
        primaryColorDark: Colors.teal[900],
        accentColor: Colors.lightGreenAccent[400]
      ),
      home: MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {


  int _counter = 0;
  int _currentPage = 0;
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 2, initialIndex: 0);
  }


  List<Widget> _pages=[
    CallPage(),
    ChatPage()
  ];

  void _changePage(int index){
    setState(() {
      _currentPage = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
          Tab(text: "Llamada",),
          Tab(text: "Mensaje",)
        ],),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[CallPage(), ChatPage()]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
