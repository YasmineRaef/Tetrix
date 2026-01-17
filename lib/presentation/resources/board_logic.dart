class Game {
  final int rows = 18;
  final int cols = 10;
  late List<List<int>> board;

  Game() {
    board = List.generate(rows, (_) => List.filled(cols, 0));
  }
}

/* Visual shape of the 2-D matrix
{
  0 0 0 0 0 0 0 0 0 0 -> r0
  0 0 0 0 0 0 0 0 0 0 -> r1
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 A 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 B 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 ..
  0 0 0 0 0 0 0 0 0 0 -> r11
} A-> board[3][2], B -> board[9][6]
 */
