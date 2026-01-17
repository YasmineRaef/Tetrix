class Preview {
  final int columns = 4;
  final int rows = 2;
  late List<List<int>> prev;

  Preview() {
    prev = List.generate(rows, (_) => List.filled(columns, 8));
  }
}

/* Visual shape of the 2-D matrix of 4*4
{
  0 0 0 0
  0 0 0 0
} As longest shape wide is the I tetromino
 */
