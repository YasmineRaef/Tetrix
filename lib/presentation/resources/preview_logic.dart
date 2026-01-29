import 'package:flutter/material.dart';

class Preview {
  final int columns = 4;
  final int rows = 2;
  late List<List<Color?>> prev;

  Preview() {
    prev = List.generate(rows, (_) => List.filled(columns, Colors.transparent));
  }
}

/* Visual shape of the 2-D matrix of 4*4
{
  0 0 0 0
  0 0 0 0
} As longest shape wide is the I tetromino
 */
