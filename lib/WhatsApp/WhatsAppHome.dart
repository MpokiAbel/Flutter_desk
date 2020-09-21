import 'package:flutter/material.dart';
import './callsScreen.dart';
import './cameraScreen.dart';
import './chatScreen.dart';
import './statusScreen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  final List<Tab> tabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });

          return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                title: Text('WhatsApp'),

                //the search and options buttons
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                ],
                backgroundColor: new Color(0xff128C7E),
                elevation: 0.7,
                bottom: TabBar(tabs: tabs)),
            body: TabBarView(children: <Widget>[
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen()
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.message, color: Colors.white),
            ),
          );
        }));
  }
}
