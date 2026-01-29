import 'package:flutter/material.dart';

import 'tetrix_colors.dart';

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
  TetrixColors.emptyCell, // 0 -> Empty
  TetrixColors.tetrominoI, //1 For I
  TetrixColors.tetrominoO, //2 For O
  TetrixColors.tetrominoT, //3 For T
  TetrixColors.tetrominoS, //4 For S
  TetrixColors.tetrominoZ, //5 For Z
  TetrixColors.tetrominoL, //6 For L
  TetrixColors.tetrominoJ, //7 For J
  TetrixColors.transparent
];
