import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/image.dart';

void main(){
  runApp(const rpsApp());
}

class rpsApp extends StatelessWidget {
  const rpsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 60, 18, 176),
                Color.fromARGB(255, 180, 43, 12),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const rps(),
        ),
      )
    );
  }
}