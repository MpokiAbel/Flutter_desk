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
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: _color,
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _bubbleColor(Colors.orange),
            _bubbleColor(Colors.blue),
            _bubbleColor(Colors.black),
            _bubbleColor(Colors.red),
            _bubbleColor(Colors.green),
            _bubbleColor(Colors.brown),
            _bubbleColor(Colors.purple),
          ],
        ),
      )),
    );
  }
}
