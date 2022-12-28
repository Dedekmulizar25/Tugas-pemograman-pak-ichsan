import 'package:flutter/material.dart';
import 'package:flutter_app/ui/switch_app.dart';

class ChipApp extends StatelessWidget {
  const ChipApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dedek mulizar ramadhan'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_circle_right),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SwitchApp())));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Wrap(
            // space between chips
            spacing: 10,
            // list of chips
            children: const [
              Chip(
                label: Text('Working'),
                avatar: Icon(
                  Icons.work,
                  color: Colors.red,
                ),
                backgroundColor: Colors.amberAccent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
              Chip(
                label: Text('Music'),
                avatar: Icon(Icons.headphones),
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
              Chip(
                label: Text('Gaming'),
                avatar: Icon(
                  Icons.gamepad,
                  color: Colors.white,
                ),
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
              Chip(
                label: Text('Cooking & Eating'),
                avatar: Icon(
                  Icons.restaurant,
                  color: Colors.pink,
                ),
                backgroundColor: Colors.greenAccent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
            ]),
      ),
    );
  }
}
