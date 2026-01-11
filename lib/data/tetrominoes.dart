import 'package:flutter/material.dart';

enum TetrominoTypes { I, O, T, S, Z, L, J }

final Map<TetrominoTypes, List<List<int>>> shapes = {
  TetrominoTypes.I: [
    [0, 0],
    [0, 1],
    [0, 2],
    [0, 3]
  ],
  TetrominoTypes.O: [
    [0, 0],
    [0, 1],
    [1, 0],
    [1, 1]
  ],
  TetrominoTypes.T: [
    [0, 0],
    [0, 1],
    [0, 2],
    [1, 1]
  ],
  TetrominoTypes.S: [
    [0, 1],
    [0, 2],
    [1, 0],
    [1, 1]
  ],
  TetrominoTypes.Z: [
    [0, 0],
    [0, 1],
    [1, 1],
    [1, 2]
  ],
  TetrominoTypes.L: [
    [0, 0],
    [1, 0],
    [1, 1],
    [1, 2]
  ],
  TetrominoTypes.J: [
    [0, 2],
    [1, 0],
    [1, 1],
    [1, 2]
  ]
};

final Map<TetrominoTypes, int> shapeColors = {
  TetrominoTypes.I: 1,
  TetrominoTypes.O: 2,
  TetrominoTypes.T: 3,
  TetrominoTypes.S: 4,
  TetrominoTypes.Z: 5,
  TetrominoTypes.L: 6,
  TetrominoTypes.J: 7,
};

final List<Color> blockColor = [
  Colors.black, // 0 -> Empty
  Color(0xFF00BCD4), //1 For I
  Color(0xFFFFEB3B), //2 For O
  Color(0xFF9C27B0), //3 For T
  Color(0xFF4CAF50), //4 For S
  Color(0xFFF44336), //5 For Z
  Color(0xFFFF9800), //6 For L
  Color(0xFF2196F3) //7 For J
];
