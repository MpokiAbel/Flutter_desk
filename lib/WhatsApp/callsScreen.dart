import 'package:flutter/material.dart';
import './whatsappModels/callsModel.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(height: 10.0),
          ListTile(
            leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(calls[index].imageUrl)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(calls[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                if (calls[index].calltype == 'Video')
                  Icon(Icons.videocam, color: new Color(0xff25D366))
                else
                  Icon(Icons.phone, color: new Color(0xff25D366))
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: <Widget>[
                  if (calls[index].callStatus == 'received' &&
                      calls[index].direction == 'outgoing')
                    Icon(
                      Icons.call_made,
                      color: Color(0xff25D366),
                    )
                  else if (calls[index].callStatus == 'missed' &&
                      calls[index].direction == 'outgoing')
                    Icon(Icons.call_made, color: Colors.red[900])
                  else if (calls[index].callStatus == 'missed' &&
                      calls[index].direction == 'incoming')
                    Icon(
                      Icons.call_received,
                      color: Colors.red[900],
                    )
                  else
                    Icon(
                      Icons.call_received,
                      color: Color(0xff25D366),
                    ),
                  Text(calls[index].info,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
