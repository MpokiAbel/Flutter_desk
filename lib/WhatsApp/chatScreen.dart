import 'package:flutter/material.dart';
import './whatsappModels/chatModel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: chatData.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(height: 10.0),
          ListTile(
              leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(chatData[index].imageUrl)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    chatData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(chatData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0))
                ],
              ),
              subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(chatData[index].messages,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0)))),
        ],
      ),
    );
  }
}
