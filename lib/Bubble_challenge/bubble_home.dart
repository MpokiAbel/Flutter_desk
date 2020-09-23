import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bubble extends StatefulWidget {
  @override
  _BubbleState createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  Widget _bubbleColor(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _color = color;
        });

        print(_color);
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 60,
        child: CircleAvatar(
          backgroundColor: color,
          radius: 55,
        ),
      ),
    );
  }

  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.color_lens, size: 50),
        backgroundColor: _color,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: _color,
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 10),
          Text("Boom - magic color change",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(height: 200),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _bubbleColor(Colors.orange),
                SizedBox(width: 20),
                _bubbleColor(Colors.blue),
                SizedBox(width: 20),
                _bubbleColor(Colors.black),
                SizedBox(width: 20),
                _bubbleColor(Colors.red),
                SizedBox(width: 20),
                _bubbleColor(Colors.green),
                SizedBox(width: 20),
                _bubbleColor(Colors.brown),
                SizedBox(width: 20),
                _bubbleColor(Colors.purple),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
