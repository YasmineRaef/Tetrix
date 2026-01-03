import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF1A1A2E),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF2C2C3E),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.pause),
                    color: Color(0xFFE0E0E0),
                  ),
                ),
              ),
              Text(
                "TETRIX",
                style: TextStyle(color: Color(0xFFE0E0E0)),
              ),
              SizedBox(width: 32, height: 40, child: Image(image: AssetImage('assets/images/Tetrix_logo.png')))
            ],
          )),
      backgroundColor: Color(0xFF1A1A2E),
    );
  }
}
