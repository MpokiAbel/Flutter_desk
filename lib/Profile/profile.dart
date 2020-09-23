import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  final Color _color = Colors.red;
  final String number = '+977 9818225533';
  void _launchURl({String url, String scheme}) async {
    Uri _mylauncher = Uri(
      scheme: scheme,
      path: url,
    );

    if (await canLaunch(_mylauncher.toString())) {
      await launch(_mylauncher.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _info(String info, String data) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListTile(
            onTap: () {
              if (info == 'Email') {
                _launchURl(url: data, scheme: 'mailto');
              } else if (info == 'Phone') {
                _launchURl(url: data, scheme: 'tel');
              } else if (info == 'Message') {
                _launchURl(url: data, scheme: 'sms');
              } else {
                _launchURl(url: data, scheme: 'https');
              }
            },
            title: Text(
              info,
              style: TextStyle(color: _color, fontSize: 15),
            ),
            subtitle: Text(
              data,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ),
        Divider(
          color: Colors.black,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('View Profile'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              _color.withOpacity(0.9),
              _color.withOpacity(0.5)
            ])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: _color,
                  child: IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {
                        _launchURl(url: number, scheme: 'tel');
                      }),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: _color.withOpacity(0.5),
                      radius: 60,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/image2.jpg'),
                      ),
                    ),
                    Text(
                      'Ram Kumar',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Kathmandu, Nepal',
                      style: TextStyle(color: _color),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: _color,
                  child: IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {
                        _launchURl(url: number, scheme: 'sms');
                      }),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(color: _color.withOpacity(0.5)),
                  child: Column(
                    children: [
                      Text('50895',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24)),
                      Text(
                        'FOLLOWERS',
                        style: TextStyle(color: _color),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(color: _color),
                  child: Column(
                    children: [
                      Text(
                        '34524',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Text('FOLLOWING', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              )
            ],
          ),
          _info('Email', 'ram@kumar.com'),
          _info('Phone', number),
          _info('Twitter', '@ramkumar'),
          _info('Facebook', 'facebook.com/ramkumar')
        ],
      ),
    );
  }
}
