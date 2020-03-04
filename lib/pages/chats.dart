import 'package:ejemplo_construccion/dummies/chats.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatState();
  }

}

class ChatState extends State<ChatPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(itemCount: dataDummy.length, itemBuilder: (context, index)=>new Column(
      children: <Widget>[new Divider(
        height: 10,
      ),
      new ListTile(leading: new CircleAvatar(
        backgroundImage: new NetworkImage(dataDummy[index].avatar)
      ),
      title: new Text(dataDummy[index].tittle),
      subtitle: new Text(dataDummy[index].message),
      )],
    ));
  }

}