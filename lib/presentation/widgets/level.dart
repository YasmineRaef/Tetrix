import "package:flutter/material.dart";

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
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
          Text("Level", style: TextStyle(color: Colors.white)),
          Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "22",
                style: TextStyle(color: Color(0xFF00BCD4), fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
