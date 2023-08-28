import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,


              children: [

                  keyr(color: Colors.red,n: 1),
                  keyr(color: Colors.teal,n: 2),
                  keyr(color: Colors.purple,n:3),
                  keyr(color: Colors.pink,n: 4),
                  keyr(color: Colors.green,n: 5),
                  keyr(color: Colors.amberAccent,n: 6),
                  keyr(color: Colors.deepOrange,n: 7),

              ],
            )),
      ),
    );
  }

  Expanded keyr({Color? color, int? n }){
    return Expanded(
      child: TextButton(

        style: TextButton.styleFrom(
          backgroundColor: color,

        ),
        onPressed: () {
          fun(n);
        },
        child: Text(""),

      ),
    );
  }

  void fun(int? i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }
}
