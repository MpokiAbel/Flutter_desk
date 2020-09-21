import 'package:flutter/material.dart';
import 'package:whatsapp/Bubble_challenge/bubble_home.dart';
import 'package:whatsapp/Profile/profile.dart';
import 'package:whatsapp/WhatsApp/WhatsAppHome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _programs(String program, String imageUrl, Widget screen) {
    return ListTile(
      title: Text(program),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return screen;
        }));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
          backgroundColor: Colors.blue[600], title: Icon(Icons.computer)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/drawer.jpg'),
                        fit: BoxFit.cover)),
                child: Text("")),
            _programs('WhatsApp', 'images/whatsapp.png', WhatsAppHome()),
            _programs('Bubble Challenge', 'images/bubble.png', Bubble()),
            _programs("Profile", "images/profile.png", Profile()),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('images/hackathon.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Welcome to Flutter 2020 ",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Text("Practical Training Apps!! ",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }
}
