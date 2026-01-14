import "package:flutter/material.dart";

class LinesCleared extends StatefulWidget {
  const LinesCleared({super.key});

  @override
  State<LinesCleared> createState() => _LinesClearedState();
}

class _LinesClearedState extends State<LinesCleared> {
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
          Text("Lines", style: TextStyle(color: Colors.white)),
          Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "45",
                style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
