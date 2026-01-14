import "package:flutter/material.dart";

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 75,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Color(0xFF2C2C3E), border: Border.all(color: Color(0xFF3A3A4A))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Score", style: TextStyle(color: Colors.white)),
          Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "1234",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
