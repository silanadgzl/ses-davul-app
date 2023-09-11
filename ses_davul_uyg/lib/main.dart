// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({Key? key}) : super(key: key);

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
  final oynatici = AudioPlayer();

  void sesOynat(String soundName) {
    var ses = AssetSource("$soundName.wav");
    oynatici.play(ses);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                buildButton("bip",Colors.blue,Colors.yellowAccent),
                buildButton("bongo", Colors.redAccent, Colors.yellowAccent,)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildButton("clap1", Colors.green, Colors.red),
                buildButton("clap2", Colors.indigo, Colors.grey),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildButton("clap3", Colors.pink, Colors.deepOrangeAccent),
                buildButton("crash", Colors.tealAccent, Colors.teal),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildButton("how", Colors.teal, Colors.yellowAccent),
                buildButton("oobah", Colors.purpleAccent, Colors.indigo),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                buildButton("ridebel", Colors.deepOrange, Colors.cyanAccent),
                buildButton("woo", Colors.white30, Colors.yellowAccent)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String soundName,Color color,Color overlayColor) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sesOynat(soundName);
          },
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(45),color: color)),
        style: ButtonStyle(overlayColor: MaterialStatePropertyAll(overlayColor) ),
      ),
    );
  }
}

