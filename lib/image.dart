import 'dart:math';

import 'package:flutter/material.dart';

class rps extends StatefulWidget {
  const rps({super.key});

  @override
  State<rps> createState() => _rpsState();
}
final rand = Random();
class _rpsState extends State<rps> {
  var activeImage = 'assets/images/rps_1.jpg';
  String pr = 'Rock';
  void rpschange(){
    setState((){
      int cur = rand.nextInt(3)+1;
      activeImage = 'assets/images/rps_$cur.jpg';
      if(cur == 2){ pr = 'Paper';}
      if(cur == 3){ pr = 'Scissors';}
      if(cur == 1){ pr = 'Rock';}
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding:  EdgeInsets.only(top: 18),
          child: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text('Rock-Paper-Scissor',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Image.asset(
          activeImage,
          width: 400,
          height: 350,
        ),
        const SizedBox(height: 20,),
        Text(pr,
          style: const TextStyle(
            color: Color.fromARGB(255, 26, 182, 254),
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 30,),
        TextButton(
          onPressed: rpschange,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 68, 239, 255),
            padding: const EdgeInsets.all(15),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 18.0),
            child:  Text('Change',
              style: TextStyle(
                color: Colors.black,
              ),          
            ),
          ),
        ),
      ],
    );
  }
}
