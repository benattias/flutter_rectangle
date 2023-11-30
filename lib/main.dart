import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Add Cadres '),
        ),
        body: FrameList(),
      ),
    );
  }
}

class FrameList extends StatefulWidget {
  @override
  _FrameListState createState() => _FrameListState();
}

class _FrameListState extends State<FrameList> {
  List<Widget> frames = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            setState(() {
              frames.add(
                Positioned(
                  left: frames.isEmpty
                      ? 0
                      : frames.length * 10.0, // Espacement horizontal
                  top: frames.isEmpty
                      ? 0
                      : frames.length * 10.0, // Espacement vertical
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              );
            });
          },
          child: Text('add frame'),
        ),
        SizedBox(height: 20), // Espacement entre le bouton et les cadres
        Expanded(
          child: Stack(
            children: frames,
          ),
        ),
      ],
    );
  }
}
