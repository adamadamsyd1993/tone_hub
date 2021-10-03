import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: my_music(),
    ),
  );
}

class my_music extends StatefulWidget {
  @override
  _my_musicState createState() => _my_musicState();
}

class _my_musicState extends State<my_music> {
  void playMusic(int numMusic) {
    print('the left button');
    final player = AudioCache();

    player.play('ton$numMusic.mp3');
  }

  Card theButton(String ButtonName, int mNUmber) {
    return Card(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple[400], // background
          onPrimary: Colors.black, // foreground
        ),
        onPressed: () {
          playMusic(mNUmber);
        },
        child: Text(ButtonName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[500],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          backgroundColor: Colors.deepPurple[400],
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Tones hub',
                style: TextStyle(fontSize: 60, fontFamily: 'Ephesis'),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'play music',
              style: TextStyle(fontSize: 60, fontFamily: 'Ephesis'),
            ),
          ),
          SizedBox(
            height: 400,
          ),
          Row(
            children: [
              theButton('Nokia', 1),
              SizedBox(width: 180),
              theButton('Samsung', 2)
            ],
          )
        ],
      ),
    );
  }
}
